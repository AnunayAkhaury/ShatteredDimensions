extends BaseEnemy
class_name MechanicBoss

@export var follow_distance: float = 600
@export var leash_distance: float = 1000  
@export var shoot_distance: float = 500  
@export var shoot_interval: float = 2.0  
@export var attack_distance: float = 50  
@export var jump_threshold: float = 50   
@export var ScoutSummonPoints: Node
@export var SentinalSummonPoints: Node
@export var shoot_cooldown: float = 3

@onready var attack_timer: Timer = $AttackTimer
@onready var muzzle: Marker2D = $Muzzle
@onready var combo_hit_box: Area2D = $ComboHitBox
@onready var summon_timer: Timer = $SummonTimer
@onready var heath_marker: Marker2D = $"../HeathMarker"
@onready var shoot_audio: AudioStreamPlayer2D = $ShootAudio
@onready var summon_audio: AudioStreamPlayer2D = $SummonAudio
@onready var boss_damage_audio: AudioStreamPlayer2D = $BossDamageAudio
@onready var boss_combo_audio: AudioStreamPlayer2D = $BossComboAudio
@onready var boss_dead: AudioStreamPlayer2D = $BossDead
@onready var key_marker: Marker2D = $"../KeyMarker"

var health_powerup_scene = preload('res://scenes/run_gun/powerups/health_pickup.tscn')
var spiral_bullet_powerup = preload('res://scenes/run_gun/powerups/spiral_bullet_powerup/spiral_bullet_pickup.tscn')
var victory_key_scene = preload('res://scenes/run_gun/victory_key.tscn')

var summoned_enemies: Array = []  
var muzzle_position: Vector2
var combo_hitbox_pos : Vector2
var is_following: bool = false
var is_attacking: bool = false
var is_shooting: bool = false
var is_jumping: bool = false
var boss_move : bool = false
var death : bool = false
var health_thresholds = [100, 75, 50, 25]  
var triggered_thresholds = []       
var health_max : int
var rage_mode_triggered: bool = false 

func _ready() -> void:
	player = get_node_or_null(player_node_path)
	unbind_player_input_commands()
	combo_attack_command = ComboAttackCommand.new()
	boss_follow_command = BossFollowCommand.new(player)
	boss_shoot_command = BossShootCommand.new()
	boss_summon_command = BossSummonCommand.new()
	bullet = preload('res://scenes/run_gun/enemies/mechanic/mechanic_bullet.tscn')
	set_bullet_type(bullet)
	muzzle_position = muzzle.position
	health_max = health
	movement_speed = 75
	await get_tree().process_frame
	combo_hitbox_pos = combo_hit_box.position                     
	combo_hit_box.monitorable = false
	combo_hit_box.monitoring = false
	attack_timer.wait_time = shoot_cooldown

func _physics_process(delta: float) -> void:
	if death:
		return                                 
	prevent_landing_on_player()
	move_and_slide()
	apply_gravity(delta)
	check_health_thresholds() 
	if player != null:
		var distance_to_player = (player.global_position - global_position).length()
		var player_above = player.global_position.y < global_position.y - jump_threshold
		if player.global_position.y < global_position.y - jump_threshold and not is_jumping:
			await get_tree().create_timer(0.5).timeout 
			perform_jump()
			is_jumping = false
			
		if distance_to_player <= follow_distance and !is_following:
			is_following = true
			current_state = STATE.FOLLOW
			
		elif distance_to_player > follow_distance and is_following:
			is_following = false
			velocity.x = 0  
			current_state = STATE.IDLE
			
		if distance_to_player <= attack_distance and not is_attacking:
			boss_combo_audio.play()
			var status = combo_attack_command.execute(self)
			if status == Command.Status.ACTIVE:
				current_state = STATE.FOLLOW  
			
		if is_following and not is_attacking:
			status = boss_follow_command.execute(self)
			if status == Command.Status.ACTIVE:
				current_state = STATE.FOLLOW
			else:
				current_state = STATE.IDLE
	else:
		attack_timer.stop()
		current_state = STATE.IDLE
	update_animation()

func perform_jump() -> void:
	if is_on_floor() and not is_jumping:
		is_jumping = true
		jump.execute(self)
	
	
func perform_shoot() -> void:
	if is_shooting:  
		return
	is_shooting = true
	attack_timer.start() 
	animatedsprite.play("shoot")
	current_state = STATE.SHOOT
	
func update_animation() -> void:
	if current_state == STATE.IDLE:
		animatedsprite.play('idle')
	elif current_state == STATE.FOLLOW and animatedsprite.animation != 'shoot' and animatedsprite.animation != 'combo':
		animatedsprite.play('walk')
	elif current_state == STATE.JUMP:
		animatedsprite.play('jump')
	elif current_state == STATE.COMBO:
		animatedsprite.play('combo')

func _on_attack_timer_timeout() -> void:
	if not is_instance_valid(player) or not is_instance_valid(self):
		return 
	var distance_to_player = (player.global_position - global_position).length()
	if distance_to_player <= shoot_distance and distance_to_player > attack_distance and not is_attacking:
		is_shooting = true
		update_muzzle_position()
		combo_hit_box.monitorable = true
		combo_hit_box.monitoring = true
		shoot_audio.play()
		boss_shoot_command.execute(self)
		current_state = STATE.FOLLOW
		
func update_muzzle_position() -> void:
	if facing == Character.Facing.LEFT:
		muzzle.position.x = abs(muzzle_position.x) 
	else:
		muzzle.position.x = -abs(muzzle_position.x) 

func update_combo_hitbox() -> void:
	if facing == Character.Facing.RIGHT:
		combo_hit_box.scale.x = -1  
		combo_hit_box.position.x = combo_hitbox_pos.x
	else:
		combo_hit_box.scale.x = 1  
		combo_hit_box.position.x = combo_hitbox_pos.x
		
func prevent_landing_on_player() -> void:
	if is_on_floor() and player != null:
		var player_x = player.global_position.x
		var boss_x = global_position.x
		var boss_y = global_position.y
		var player_y = player.global_position.y
		if abs(player_x - boss_x) < 10 and boss_y < player_y:
			if randi() % 2 == 0:
				_horizontal_input = -1
			else:
				_horizontal_input = 1 
			is_jumping = true 
			boss_move = true 
			jump.execute(self)


func _on_summon_timer_timeout() -> void:
	if is_following:
		summon_audio.play()
		boss_summon_command.execute(self)

func _on_hurtbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		return
	if area == self.get_node("HitBox"):  
		return
	if area.get_parent().has_method("get_damage_amount") and is_following and not death:
		boss_damage_audio.play()
		hitflashplayer.play("hit_flash")
		var node = area.get_parent() as Node
		health -= node.damage_amount
		if health <= 0:
			animatedsprite.stop()
			death = true
			unbind_player_input_commands()
			boss_dead.play()
			spawn_victory_key()
			attack_timer.stop()
			summon_timer.stop()
			while not is_on_floor():
				await get_tree().process_frame
			animatedsprite.play("death")
			for enemy in summoned_enemies:
				if enemy != null and is_instance_valid(enemy):
					enemy.queue_free()
			summoned_enemies.clear()
			


func spawn_health_powerup() -> void:
	if health_powerup_scene and heath_marker:
		var powerup = health_powerup_scene.instantiate()
		powerup.global_position = heath_marker.global_position  
		get_parent().add_child(powerup)
		
					
func check_health_thresholds() -> void:
	var health_percentage = (float(health) / float(health_max)) * 100
	for threshold in health_thresholds:
		if health_percentage <= threshold and not triggered_thresholds.has(threshold):
			triggered_thresholds.append(threshold)  
			spawn_health_powerup()  
	if health_percentage <= 33 and not rage_mode_triggered:
		activate_rage_mode()

func activate_rage_mode() -> void:
	if spiral_bullet_powerup and heath_marker:
		var spiral_powerup = spiral_bullet_powerup.instantiate()
		var spiral_marker = heath_marker.duplicate()
		spiral_marker.global_position.y = spiral_marker.global_position.y - 30
		spiral_powerup.global_position = spiral_marker.global_position
		spiral_powerup.player_node_path = player_node_path
		get_parent().add_child(spiral_powerup)
		
	rage_mode_triggered = true
	movement_speed = movement_speed * 2  
	shoot_cooldown = shoot_cooldown / 1.25 
	attack_timer.wait_time = shoot_cooldown  

func start_fight() -> void:
	bind_player_input_commands()	
	player.bind_player_input_commands()
	current_state = STATE.FOLLOW

func spawn_victory_key() -> void:
	var victory_key = victory_key_scene.instantiate()
	victory_key.global_position = key_marker.global_position
	victory_key.player_node_path = player_node_path
	get_parent().add_child(victory_key)

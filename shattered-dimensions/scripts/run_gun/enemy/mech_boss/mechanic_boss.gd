extends BaseEnemy
class_name MechanicBoss

@export var leash_distance: float = 800  # Distance to start following
@export var shoot_distance: float = 500  # Distance to stop and shoot
@export var shoot_interval: float = 2.0  # Shooting interval in seconds
@export var attack_distance: float = 50  # Distance to trigger physical attack combo
@export var jump_threshold: float = 50   # Height difference to trigger a jump
@export var ScoutSummonPoints: Node
@export var SentinalSummonPoints: Node
@onready var attack_timer: Timer = $AttackTimer
@onready var muzzle: Marker2D = $Muzzle
@onready var combo_hit_box: Area2D = $ComboHitBox
@onready var summon_timer: Timer = $SummonTimer

var summoned_enemies: Array = []  
var muzzle_position: Vector2
var combo_hitbox_pos : Vector2
var is_following: bool = false
var is_attacking: bool = false
var is_shooting: bool = false
var is_jumping: bool = false
var boss_move : bool = false
var death : bool = false

func _ready() -> void:
	player = get_node_or_null(player_node_path)
	bind_player_input_commands()
	combo_attack_command = ComboAttackCommand.new()
	boss_follow_command = BossFollowCommand.new(player)
	boss_shoot_command = BossShootCommand.new()
	boss_summon_command = BossSummonCommand.new()
	bullet = preload('res://scenes/run_gun/enemies/mechanic/mechanic_bullet.tscn')
	set_bullet_type(bullet)
	muzzle_position = muzzle.position
	
	await get_tree().process_frame
	combo_hitbox_pos = combo_hit_box.position                     
	combo_hit_box.monitorable = false
	combo_hit_box.monitoring = false

func _physics_process(delta: float) -> void:
	if death:
		return                                 
	prevent_landing_on_player()
	move_and_slide()
	apply_gravity(delta)
	if player != null:
		var distance_to_player = (player.global_position - global_position).length()
		var player_above = player.global_position.y < global_position.y - jump_threshold
		if player.global_position.y < global_position.y - jump_threshold and not is_jumping:
			await get_tree().create_timer(0.5).timeout 
			perform_jump()
			is_jumping = false
			
		if distance_to_player <= leash_distance and !is_following:
			is_following = true
			current_state = STATE.FOLLOW
			
		elif distance_to_player > leash_distance and is_following:
			is_following = false
			velocity.x = 0  
			current_state = STATE.IDLE
			
		if distance_to_player <= attack_distance and not is_attacking:
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
	var distance_to_player = (player.global_position - global_position).length()
	if distance_to_player <= shoot_distance and distance_to_player > attack_distance and not is_attacking:
		is_shooting = true
		update_muzzle_position()
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
	boss_summon_command.execute(self)

func _on_hurtbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		return
	if area == self.get_node("HitBox"):  
		return
	if area.get_parent().has_method("get_damage_amount"):
		hitflashplayer.play("hit_flash")
		var node = area.get_parent() as Node
		health -= node.damage_amount
		if health <= 0:
			animatedsprite.stop()
			death = true
			unbind_player_input_commands()
			animatedsprite.play("death")
			for enemy in summoned_enemies:
				if enemy != null and is_instance_valid(enemy):
					enemy.queue_free()
			summoned_enemies.clear()
			

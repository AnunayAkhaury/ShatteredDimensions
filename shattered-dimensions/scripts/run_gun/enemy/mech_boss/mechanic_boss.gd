extends BaseEnemy
class_name MechanicBoss

@export var leash_distance: float = 800  # Distance to start following
@export var shoot_distance: float = 500  # Distance to stop and shoot
@export var shoot_interval: float = 2.0  # Shooting interval in seconds
@export var attack_distance: float = 50  # Distance to trigger physical attack combo
@export var jump_threshold: float = 50   # Height difference to trigger a jump

@onready var attack_timer: Timer = $AttackTimer
@onready var muzzle: Marker2D = $Muzzle
@onready var combo_hit_box: Area2D = $ComboHitBox

var muzzle_position: Vector2
var combo_hitbox_pos : Vector2
var boss_follow_command: BossFollowCommand
var combo_attack_command : ComboAttackCommand
var boss_shoot_command : BossShootCommand
var is_following: bool = false
var is_attacking: bool = false
var is_shooting: bool = false
var is_jumping: bool = false

func _ready() -> void:
	super._ready()
	combo_attack_command = ComboAttackCommand.new()
	boss_follow_command = BossFollowCommand.new(player)
	boss_shoot_command = BossShootCommand.new()
	bullet = preload('res://scenes/run_gun/enemies/mechanic/mechanic_bullet.tscn')
	set_bullet_type(bullet)
	muzzle_position = muzzle.position
	
	await get_tree().process_frame
	combo_hitbox_pos = combo_hit_box.position                     
	combo_hit_box.monitorable = false
	combo_hit_box.monitoring = false

func _physics_process(delta: float) -> void:                                 
	move_and_slide()
	apply_gravity(delta)
	prevent_landing_on_player()
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
		var player_rect = player.global_position
		var boss_rect = global_position

		if abs(player_rect.x - boss_rect.x) < 1: 
			if player_rect.x > boss_rect.x:
				global_position.x -= 30  
			else:
				global_position.x += 30  


#func _on_animated_sprite_2d_animation_finished() -> void:
	#if current_state == STATE.COMBO:
		#print('Ending combo')
		#is_attacking = false
		#combo_hit_box.monitorable = false
		#combo_hit_box.monitoring = false
		#current_state = STATE.FOLLOW  


func _on_animated_sprite_2d_animation_finished() -> void:
	pass # Replace with function body.

class_name Player
extends Character 

@export var health: int = 100
@export var jump_velocity_input: int = -300

var _damaged:bool = false
var _dead:bool = false
# VARIABLES FOR PLATFORMER
var double_jump: bool = false
@export var platformer_level: int
var lives: int = GlobalVars.lives
var on_trampoline: bool = false
var checkpoint_num: int = 0
var checkpoints: Array = [
	[65, 589],
	[967, 395],
	[1152, 587],
	[2209, 477],
	[3329, 524]
]

var platformerCompleted = GlobalVars.platformerCompleted
var carCompleted = GlobalVars.carCompleted
var shooterCompleted = GlobalVars.shooterCompleted
var spaceshipCompleted = GlobalVars.spaceshipCompleted

#@onready var animation_tree:AnimationTree = $AnimationTree

# VARIABLE FOR RUNGUN
@onready var muzzle : Marker2D = $Muzzle
@onready var HitAnimationPlayer = $AnimationPlayer
@onready var hitbox: CollisionShape2D = $CollisionShape2D
@onready var knockback_timer: Timer = $KnockbackTimer
@onready var hurtbox : Area2D = $Hurtbox
@onready var shoot_cooldown_timer : Timer = $ShootCoolDownTimer
@onready var sprite_2d: AnimatedSprite2D = $Sprite2D


@export var knockback_force: float = 300 
@export var shoot_cooldown : float = 0.33
var bullet = preload("res://scenes/run_gun/bullet.tscn")

var player_death_effect = preload("res://scenes/run_gun/player/player_death_effect.tscn")

var muzzle_position
var knockback_active: bool = false  
var is_damagable: bool = true 
var crouching: bool = false
var original_hit_box_shape : int
var original_hit_box_y : int
var can_shoot: bool = true

var current_state = STATE.IDLE
enum STATE {
	IDLE,
	RUN,
	CROUCH,
	SHOOT,
	RUN_SHOOT,
	JUMP
}
@onready var jump_audio: AudioStreamPlayer = $JumpAudio
@onready var trampoline_audio: AudioStreamPlayer = $TrampolineAudio
@onready var death_audio: AudioStreamPlayer = $DeathAudio

func _ready():
	#animation_tree.active = true
	bind_player_input_commands()
	muzzle_position = muzzle.position
	original_hit_box_shape = hitbox.shape.size.y
	original_hit_box_y = hitbox.position.y
	shoot_cooldown_timer.wait_time = shoot_cooldown	
	jump_velocity = jump_velocity_input

func _physics_process(delta: float):
	if Global.run_gun:
		jump_velocity_input = -445
	else:
		jump_velocity_input = -300
		
	if knockback_active and Global.run_gun:
		move_and_slide()
		_apply_gravity(delta)
		return 
		
	if lives == 0:
		unbind_player_input_commands()
		get_tree().change_scene_to_file("res://scenes/platformer/game_over.tscn")
		
	var move_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var is_shooting = Input.is_action_just_pressed("shoot")
	
	if is_on_floor() and Input.is_action_pressed("crouch"):
		start_crouch()
		return
		
	if crouching and (!Input.is_action_pressed("crouch") or not is_on_floor()):
		end_crouch()

		
	if move_input > 0.1:
		current_state = STATE.RUN
		right_cmd.execute(self)
	elif move_input < -0.1:
		current_state = STATE.RUN
		left_cmd.execute(self)
	else:
		if is_on_floor():
			current_state = STATE.IDLE
			idle.execute(self)
			
	if Input.is_action_just_pressed("shoot") and can_shoot and Global.run_gun:
		if shoot_cooldown != 0:
			can_shoot = false
		if move_input != 0.0:
			current_state = STATE.RUN_SHOOT
			run_shoot.execute(self)
		else:
			current_state = STATE.SHOOT
			shoot.execute(self)
		shoot_cooldown_timer.start()
	if Input.is_action_just_pressed("jump") and (is_on_floor() or double_jump):
		if on_trampoline:
			self.velocity.y = -650
			on_trampoline = false
			trampoline_audio.play()
		else:
			up_cmd.execute(self)
			jump_audio.play()
	
		current_state = STATE.JUMP
		up_cmd.execute(self)
		
			#else:
				#sprite.play("jump")
	update_amination()
	super(delta)
	#_manage_animation_tree_state()


# FUNCTIONS FOR PLATFORMER

func platformer_respawn():
	if lives <= 0:
		return
	death_audio.play()
	if platformer_level == 1:
		position.x = 65
		position.y = 595
	elif platformer_level == 2:
		position.x = checkpoints[checkpoint_num][0]
		position.y = checkpoints[checkpoint_num][1]
	else:
		position.x = 67
		position.y = 590


#func take_damage(damage:int) -> void:
	#health -= damage
	#_damaged = true
	#if 0 >= health:
		#_play($Audio/defeat)
		#_dead = true
		#animation_tree.active = false
		#animation_player.play("death")
	#else:
		#_play($Audio/hurt)


#Logic to support the state machine in the AnimationTree
#func _manage_animation_tree_state() -> void:
	#if !is_zero_approx(velocity.x):
		#animation_tree["parameters/conditions/idle"] = false
		#animation_tree["parameters/conditions/moving"] = true
	#else:
		#animation_tree["parameters/conditions/idle"] = true
		#animation_tree["parameters/conditions/moving"] = false
	#
	#if is_on_floor():
		#animation_tree["parameters/conditions/jumping"] = false
		#animation_tree["parameters/conditions/on_floor"] = true
	#else:
		#animation_tree["parameters/conditions/jumping"] = true
		#animation_tree["parameters/conditions/on_floor"] = false
	#
	##toggles
	#if attacking:
		#animation_tree["parameters/conditions/attacking"] = true
		#attacking = false
	#else:
		#animation_tree["parameters/conditions/attacking"] = false
	#
	#if sword_up:
		#animation_tree["parameters/conditions/sword_up"] = true
		#sword_up = false
	#else:
		#animation_tree["parameters/conditions/sword_up"] = false
		#
	#if _damaged:
		#animation_tree["parameters/conditions/damaged"] = true
		#_damaged = false
	#else:
		#animation_tree["parameters/conditions/damaged"] = false



func bind_player_input_commands():
	right_cmd = MoveRightCommand.new()
	left_cmd = MoveLeftCommand.new()
	up_cmd = JumpCommand.new()
	#fire1 = AttackCommand.new()
	idle = IdleCommand.new()
	run_shoot_left = RunShootLeftCommand.new()
	run_shoot = RunShootCommand.new()
	shoot = ShootCommand.new()		


func unbind_player_input_commands():
	right_cmd = Command.new()
	left_cmd = Command.new()
	up_cmd = Command.new()
	fire1 = Command.new()
	idle = Command.new()
	run_shoot_left = Command.new()
	run_shoot = Command.new()
	shoot = Command.new()
#func command_callback(cmd_name:String) -> void:
	#if "attack" == cmd_name:
		#_play($Audio/attack)
		#
	#if "jump" == cmd_name:
		#_play($Audio/jump)
		#
	#if "engage" == cmd_name:
		#_play($Audio/engage)
		#
	#if "undeath" == cmd_name:
		#_play($Audio/undeath)

func _play(player:AudioStreamPlayer2D) -> void:
	if !player.playing:
		player.play()

# FUNCTIONS FOR RUN_N_GUN

func update_amination():
	if current_state == STATE.IDLE and sprite_2d.animation != 'shoot':
		sprite_2d.play('idle')
	elif current_state == STATE.RUN and sprite_2d.animation != 'run_gun':
		sprite_2d.play('run')
	elif current_state == STATE.JUMP:
		sprite_2d.play('jump')
	elif current_state == STATE.RUN_SHOOT:
		sprite_2d.play('run_gun')
	elif current_state ==  STATE.SHOOT:
		sprite_2d.play('shoot')
		if !sprite_2d.is_playing():  sprite_2d.play('shoot')
		
func update_muzzle_position():
	if facing == Character.Facing.RIGHT:
		muzzle.position.x = abs(muzzle_position.x) 
	else:
		muzzle.position.x = -abs(muzzle_position.x)  

func _on_hurtbox_body_entered(body: Node2D) -> void:
	print("BODY ENTER")
	if body.is_in_group("enemy") and not knockback_active:
		var knockback_direction: Vector2 = (position - body.position).normalized()
		velocity = knockback_direction * knockback_force
		knockback_active = true
		knockback_timer.start(0.33)
		HitAnimationPlayer.play("hit_flash")
		HealthManager.decrease_health(body.damage_amount)
	if HealthManager.current_health <= 0:
		player_death()

func player_death() -> void:
	var player_death_instance = player_death_effect.instantiate() as Node2D
	player_death_instance.global_position = global_position
	get_parent().add_child(player_death_instance)
	queue_free()
			
	
	
func _on_knockback_timer_timeout() -> void:
	knockback_active = false
	velocity = Vector2.ZERO 


func _on_hurtbox_area_entered(area: Area2D) -> void:
	print("PROJ ENTER")
	if area.is_in_group("ComboHitBox"):
		var knockback_direction: Vector2 = (position - area.global_position).normalized()
		velocity = knockback_direction * knockback_force
		knockback_active = true
		knockback_timer.start(0.15)
		HitAnimationPlayer.play("hit_flash")
		HealthManager.decrease_health(area.damage_amount)
			
	if area.get_parent().has_method("get_enemyproj_amount") and not knockback_active:
		var node = area.get_parent() as Node
		var knockback_direction: Vector2 = (global_position - area.global_position).normalized()
		velocity = knockback_direction * knockback_force
		knockback_active = true
		knockback_timer.start(0.15)
		HitAnimationPlayer.play("hit_flash")
		HealthManager.decrease_health(node.damage_amount)
	if HealthManager.current_health <= 0:
		player_death()
		
func _on_shoot_cool_down_timer_timeout() -> void:
	can_shoot = true  

func start_crouch():
	var new_height = original_hit_box_shape * 0.8  
	var height_difference = original_hit_box_shape - new_height
	hitbox.shape.size.y = new_height
	hitbox.position.y = original_hit_box_y + height_difference / 2  
	if hurtbox != null and not crouching:
		velocity.x = 0
		crouching = true
		hurtbox.scale = Vector2(1.0, 0.8)  
		hurtbox.position.y = hurtbox.position.y + 10  
		sprite.play("crouch")
	move_and_slide()
	
	
func end_crouch():
	crouching = false
	hitbox.position.y = original_hit_box_y
	hitbox.shape.size.y = original_hit_box_shape
	if hurtbox != null:
		hurtbox.scale = Vector2(1, 1) 
		hurtbox.position.y -= 10   

func set_bullet_type(new_bullet: PackedScene) -> void:
	bullet = new_bullet


func _on_platformer_body_entered(body: Node2D) -> void:
	if not platformerCompleted:
		get_tree().change_scene_to_file("res://scenes/platformer/difficulty_selector.tscn")


func _on_shooter_body_entered(body: Node2D) -> void:
	if not shooterCompleted:
		get_tree().change_scene_to_file("res://scenes/run_gun/level1/level1.tscn")


func _on_car_body_entered(body: Node2D) -> void:
	if not carCompleted:
		get_tree().change_scene_to_file("res://scenes/car_level.tscn")


func _on_spaceship_body_entered(body: Node2D) -> void:
	if not spaceshipCompleted:
		get_tree().change_scene_to_file("res://scenes/spaceship/ship_level.tscn")

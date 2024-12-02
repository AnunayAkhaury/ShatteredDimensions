class_name Player
extends Character 

@export var health:int = 100
@export var default_run_animation: String = "run"  
@export var default_idle_animation: String = "idle"

var _damaged:bool = false
var _dead:bool = false
var lives = 10
# VARIABLES FOR PLATFORMER
var double_jump:bool = false
var platformer_level:int = 1

var run_gun_run_animation: String
var run_gun_idle_animation: String 

#@onready var animation_tree:AnimationTree = $AnimationTree

# VARIABLE FOR RUNGUN
var bullet = preload("res://scenes/run_gun/bullet.tscn")
@onready var muzzle : Marker2D = $Muzzle
var muzzle_position
@onready var HitAnimationPlayer = $AnimationPlayer
var player_death_effect = preload("res://scenes/run_gun/player/player_death_effect.tscn")
@onready var hitbox: CollisionShape2D = $CollisionShape2D
@export var knockback_force: float = 300 
var knockback_active: bool = false  
@onready var knockback_timer: Timer = $KnockbackTimer
var is_damagable: bool = true 

func _ready():
	#animation_tree.active = true
	bind_player_input_commands()
	muzzle_position = muzzle.position

func _physics_process(delta: float):
	if knockback_active:
		move_and_slide()
		_apply_gravity(delta)
		return 
	if lives == 0:
		unbind_player_input_commands()
		get_tree().change_scene_to_file("res://scenes/platformer/game_over.tscn")
		
	var move_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	#flip_muzzle_position(move_input)
	#if Input.is_action_just_pressed("attack"):
		#fire1.execute(self)

	if is_on_floor() and Input.is_action_pressed("crouch"):
		velocity.x = 0
		hitbox.shape.size.y = 22
		hitbox.position.y = 8
		sprite.play("crouch")
		return
	
	if Input.is_action_just_pressed("shoot"):
		if move_input == 0.0:
			shoot.execute(self)
		if move_input > 0.1:
			run_shoot_right.execute(self)
		elif move_input < -0.1:
			run_shoot_left.execute(self)
	
	if move_input > 0.1:
		right_cmd.execute(self)
	elif move_input < -0.1:
		left_cmd.execute(self)
	else:
			#if is_on_floor():
		idle.execute(self)
			#else:
				#sprite.play("jump")
	
	if Input.is_action_just_pressed("jump") and (is_on_floor() or double_jump):
		up_cmd.execute(self)
	
		
	super(delta)
	#_manage_animation_tree_state()

func set_level_specific_animations(run_anim: String) -> void:
	run_gun_run_animation = run_anim

# FUNCTIONS FOR PLATFORMER

func platformer_respawn():
	if platformer_level == 1:
		position.x = 65
		position.y = 595


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
	run_shoot_right = RunShootRightCommand.new()
	shoot = ShootCommand.new()
	await get_tree().create_timer(1.0).timeout
	right_cmd.set_animation(run_gun_run_animation if run_gun_run_animation else default_run_animation)
	left_cmd.set_animation(run_gun_run_animation if run_gun_run_animation else default_run_animation)

func unbind_player_input_commands():
	right_cmd = Command.new()
	left_cmd = Command.new()
	up_cmd = Command.new()
	fire1 = Command.new()
	idle = Command.new()
	run_shoot_left = Command.new()
	run_shoot_right = Command.new()
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

func update_muzzle_position():
	if facing == Character.Facing.RIGHT:
		muzzle.position.x = abs(muzzle_position.x) 
	else:
		muzzle.position.x = -abs(muzzle_position.x)  

func _on_hurtbox_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemy") and not knockback_active:
		print("ENEMY ENTERD", body.damage_amount)
		var knockback_direction: Vector2 = (position - body.position).normalized()
		velocity = knockback_direction * knockback_force
		knockback_active = true
		knockback_timer.start(0.33)
		HitAnimationPlayer.play("hit_flash")
		HealthManager.decrease_health(body.damage_amount)
	if HealthManager.current_health <= 0:
		print("PLAYING DEATH")
		player_death()

func player_death() -> void:
	var player_death_instance = player_death_effect.instantiate() as Node2D
	player_death_instance.global_position = global_position
	print(player_death_instance)
	get_parent().add_child(player_death_instance)
	queue_free()
	
func _on_knockback_timer_timeout() -> void:
	knockback_active = false

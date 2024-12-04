class_name Player
extends Character 

@export var health: int = 100

var _damaged: bool = false
var _dead: bool = false

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

#@onready var animation_tree:AnimationTree = $AnimationTree
@onready var hitbox: CollisionShape2D = $CollisionShape2D
@onready var jump_audio: AudioStreamPlayer = $JumpAudio
@onready var trampoline_audio: AudioStreamPlayer = $TrampolineAudio
@onready var death_audio: AudioStreamPlayer = $DeathAudio

func _ready():
	#animation_tree.active = true
	bind_player_input_commands()


func _physics_process(delta: float):
	if lives == 0:
		unbind_player_input_commands()
		get_tree().change_scene_to_file("res://scenes/platformer/game_over.tscn")
		
	var move_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")

	#if Input.is_action_just_pressed("attack"):
		#fire1.execute(self)
		
	if is_on_floor() and Input.is_action_pressed("crouch"):
		velocity.x = 0
		hitbox.shape.size.y = 22
		hitbox.position.y = 8
		sprite.play("crouch")
		
	else:
		hitbox.shape.size.y = 28
		hitbox.position.y = 5
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
		if on_trampoline:
			self.velocity.y = -650
			on_trampoline = false
			trampoline_audio.play()
		else:
			up_cmd.execute(self)
			jump_audio.play()
	
	super(delta)
	#_manage_animation_tree_state()


# FUNCTIONS FOR PLATFORMER

func platformer_respawn():
	if lives <= 0:
		return
	death_audio.play()
	Engine.time_scale = 0.3
	await get_tree().create_timer(0.2).timeout
	Engine.time_scale = 1
	
	print(platformer_level)
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


func unbind_player_input_commands():
	right_cmd = Command.new()
	left_cmd = Command.new()
	up_cmd = Command.new()
	fire1 = Command.new()
	idle = Command.new()

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

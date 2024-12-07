class_name Spaceship
extends CharacterBody2D

#fix boost

@export var fullhealth: Texture2D
@export var damage1: Texture2D
@export var damage2: Texture2D
@export var damage3: Texture2D
@export var weapons_scene:PackedScene
@export var new_weapons_scene:PackedScene

@onready var appearance: Sprite2D = $Base
@onready var camera: Camera2D = %Camera2D
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"
@onready var boost: AnimatedSprite2D = $Boost
#@onready var fire: WeaponsFire = $Fire
@onready var health2: TextureProgressBar = %Health


@onready var firing: Node2D = $Firing
#@onready var weapons: WeaponsFire = $Weapons

var health: int = 100
var speed: int = 175
var WIDTH: int = 5
var binded: bool = true
var pushed: int = 0
var bounce: bool = false
var curr_boost: bool = false
var weapons

func _ready() -> void:
	appearance.texture = fullhealth

func _process(delta: float) -> void:
	#print(weapons.position, " ", position)
	if binded and Input.is_action_just_pressed("fire"):
		weapons = new_weapons_scene.instantiate() as NewWeapons
		add_child(weapons)
		weapons.position = Vector2(0,0)
		#fire.startFire = true
		weapons.startFire = true
		print("started the fire from spaceship")
		
		
	if binded and Input.is_action_just_pressed("boost"):
		curr_boost = true
		animation_player.play("boost")
	
	if bounce:
		binded = false
		position.x -= 0.3 * speed * delta
		
	
	if health>=90:
		appearance.texture = fullhealth
	elif health>=60:
		appearance.texture = damage1
	elif health>=30:
		appearance.texture = damage2
	else:
		appearance.texture = damage3
		
	health2.value = health
	
	var horizontal_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	if binded and horizontal_input > 0.1:
		if curr_boost:
			position.x += horizontal_input * speed * delta * 2.5
		else:
			position.x += horizontal_input * speed * delta * 1.5
	
	var vertical_input = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	if binded and abs(vertical_input)>0.1:
		if curr_boost:
			position.y = clampf(position.y+(vertical_input * speed * delta * 2), -1000, 1000)
		else:
			position.y = clampf(position.y+(vertical_input * speed * delta), -1000, 1000)
		camera.position.y = clampf(camera.position.y + (0.9 * vertical_input * speed * delta), -750, 750)
		health2.position.y = clampf(health2.position.y + (0.9 * vertical_input * speed * delta), -750, 750)
		rotation = vertical_input*5*delta
	else:
		rotation = 0
		
	
	

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name=="fire":
		print("move projectiles")
	if anim_name=="boost":
		print("stop boost")

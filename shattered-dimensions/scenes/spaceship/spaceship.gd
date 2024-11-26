class_name Spaceship
extends Node2D

@export var fullhealth: Texture2D
@export var damage1: Texture2D
@export var damage2: Texture2D
@export var damage3: Texture2D

@onready var appearance: Sprite2D = $Base
@onready var camera: Camera2D = %Camera2D
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"
@onready var boost: AnimatedSprite2D = $Boost

@onready var firing: Node2D = $Firing

var health: int = 100
var speed: int = 175
var WIDTH: int = 5

func _ready() -> void:
	appearance.texture = fullhealth

func _process(delta: float) -> void:
	
	if health>=90:
		appearance.texture = fullhealth
	elif health>=60:
		appearance.texture = damage1
	elif health>=30:
		appearance.texture = damage2
	else:
		appearance.texture = damage3
	
	var horizontal_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	if horizontal_input > 0.1:
		position.x += horizontal_input * speed * delta
	
	var vertical_input = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	if abs(vertical_input)>0.1:
		position.y += vertical_input * speed * delta
		camera.position.y += -1 * vertical_input * speed * delta
		
	if Input.is_action_just_pressed("fire"):
		animation_player.play("shoot_missiles")
		animation_player.animation_finished.connect(_on_animation_finished)
		
	if Input.is_action_just_pressed("boost"):
		animation_player.play("boost")
	
func _on_animation_finished(animation : String):
	if animation=="fire":
		print("move projectiles")
	if animation=="boost":
		print("stop boost")

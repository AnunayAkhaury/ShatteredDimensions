class_name Spaceship
extends Node2D

@export var fullhealth: Texture2D
@export var damage1: Texture2D
@export var damage2: Texture2D
@export var damage3: Texture2D

@onready var appearance: Sprite2D = $Sprite2D
@onready var camera: Camera2D = %Camera2D

var health: int = 100

func _ready() -> void:
	appearance.texture = fullhealth

func _process(delta: float) -> void:
	#print("not entered")
	'''if Input.is_action_just_pressed("move_right"):
		#print("entered")
		camera.position.x += 50
		position.x += 50
	print(camera.position, position)'''
	
	var move_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	if move_input > 0.1:
		camera.position.x += 50
		position.x += move_input
	

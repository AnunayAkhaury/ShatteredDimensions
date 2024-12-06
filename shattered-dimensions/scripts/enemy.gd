class_name Enemy
extends CharacterBody2D

@export var blastScene : PackedScene
@onready var camera: Camera2D = %Camera2D

var health = 100
var originalPosition = position
var lower = true
var speed = 50
var onscreen = false
var blast
var countdown = 50
var startCountdown = false


func _process(delta: float) -> void:
	if health <= 0:
		queue_free()
		
	if position.y<=originalPosition.y - 125:
		lower = true
		
	if position.y>=originalPosition.y + 125:
		lower = false
	
	if lower:
		position.y += delta*speed
	else:
		position.y -= delta*speed
	
	if camera.position.x + 500 >= position.x and abs(camera.position.y-position.y)<=250 and countdown==50:
		blast = blastScene.instantiate() as LaserBlast
		get_parent().add_child(blast)
		blast.position = position
		startCountdown = true
	if startCountdown:
		countdown -= 1
	if countdown == 0:
		startCountdown = false
		countdown = 50
	
	
		

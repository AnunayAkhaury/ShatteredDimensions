class_name Enemy
extends CharacterBody2D

@export var blastScene : PackedScene
@onready var camera: Camera2D = %Camera2D

var healthLevel = 100
var originalPosition = position
var lower = true
var speed = 50
var delay = 75
var startDelay = false


func _process(delta: float) -> void:
	
	# remove enemy from tree if dead
	if healthLevel <= 0:
		queue_free()
		get_parent().get_parent().get_node("Camera2D").get_node("KillCount").get_children()[-1].queue_free()
		
	# UFO constant movement functionality
	if position.y<=originalPosition.y - 125:
		lower = true
	
	if position.y>=originalPosition.y + 125:
		lower = false
	
	if lower:
		position.y += delta*speed
	else:
		position.y -= delta*speed
	
	# start UFO blasts if on the player's screen
	if camera.position.x + 500 >= position.x and abs(camera.position.y-position.y)<=250 and delay==75:
		var blast = blastScene.instantiate() as LaserBlast
		get_parent().add_child(blast)
		blast.position = position
		startDelay = true
		
	# handle delay between each blast
	if startDelay:
		delay -= 1
	if delay == 0:
		startDelay = false
		delay = 75

<<<<<<< HEAD
extends Control

@onready var character_body = $Character

func _ready() -> void:
	character_body.collision_layer &= ~2
	character_body.collision_layer |= 1
	 
=======
class_name Platform
extends StaticBody2D

var lower = true
var speed = 75


# handle constant movement of platform
func _process(delta: float) -> void:
	
	if position.y<=0:
		lower = true
		
	elif position.y>=310:
		lower = false
	
	if lower:
		position.y += delta*speed
	else:
		position.y -= delta*speed
>>>>>>> origin/main

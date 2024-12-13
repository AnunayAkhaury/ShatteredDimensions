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

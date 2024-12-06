class_name Platform
extends StaticBody2D

var lower = true
var speed = 75

func _process(delta: float) -> void:
	
	if position.y<=0:
		lower = true
		
	if position.y>=310:
		lower = false
	
	if lower:
		position.y += delta*speed
	else:
		position.y -= delta*speed
	#print(position.y)

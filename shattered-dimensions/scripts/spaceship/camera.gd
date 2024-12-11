class_name Camera
extends Camera2D

@onready var spaceship: Spaceship = $"../Spaceship"

const autoscroll_speed : int = 100
const box_width : int = 200


func _process(delta: float):
	
	# camera autoscroll functionality
	if not spaceship.keepstill:
		position.x += autoscroll_speed*delta
	
	# left edge pushbox functionality
	if (spaceship.global_position.x - spaceship.WIDTH / 2.0) < (global_position.x - box_width/2.0):
		spaceship.global_position.x = global_position.x - box_width/2.0 + spaceship.WIDTH / 2.0
	

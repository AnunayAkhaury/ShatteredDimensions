class_name Background
extends ParallaxBackground

@onready var camera: Camera2D = %Camera2D
@onready var spaceship: Spaceship = $"../Spaceship"

var autoscroll_speed : int = 100
var box_width : int = 200

func _process(delta: float):
	
	#autoscroll
	camera.position.x += autoscroll_speed*delta
	
	#left edge
	print(spaceship.global_position.x - spaceship.WIDTH / 2.0, " ", camera.global_position.x - box_width/2.0)
	if (spaceship.global_position.x - spaceship.WIDTH / 2.0) < (camera.global_position.x - box_width/2.0):
		print("entered")
		spaceship.global_position.x = camera.global_position.x - box_width/2.0 + spaceship.WIDTH / 2.0

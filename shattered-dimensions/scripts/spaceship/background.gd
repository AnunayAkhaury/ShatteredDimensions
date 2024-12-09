class_name Background
extends ParallaxBackground

@onready var camera: Camera2D = %Camera2D
@onready var spaceship: Spaceship = $"../Spaceship"
@onready var health: TextureProgressBar = %Health

var autoscroll_speed : int = 100
var box_width : int = 200


func _process(delta: float):
	
	# camera autoscroll functionality
	if not spaceship.keepstill:
		camera.position.x += autoscroll_speed*delta
	
	# left edge pushbox functionality
	if (spaceship.global_position.x - spaceship.WIDTH / 2.0) < (camera.global_position.x - box_width/2.0):
		spaceship.global_position.x = camera.global_position.x - box_width/2.0 + spaceship.WIDTH / 2.0

class_name Background
extends ParallaxBackground

@onready var camera: Camera2D = %Camera2D
@onready var spaceship: Spaceship = $"../Spaceship"
@onready var health: TextureProgressBar = %Health

var autoscroll_speed : int = 100
var box_width : int = 200

func _process(delta: float):
	
	#autoscroll
	camera.position.x += autoscroll_speed*delta
	health.position.x += autoscroll_speed*delta
	
	#left edge
	#print(spaceship.global_position.x - spaceship.WIDTH / 2.0, " ", camera.global_position.x - box_width/2.0)
	if (spaceship.global_position.x - spaceship.WIDTH / 2.0) < (camera.global_position.x - box_width/2.0):
		#print("entered")
		spaceship.global_position.x = camera.global_position.x - box_width/2.0 + spaceship.WIDTH / 2.0

	'''
	#right edge
	if (target.global_position.x + target.WIDTH / 2.0) > (global_position.x + box_width/2.0):
		target.global_position.x = global_position.x + box_width/2.0 - target.WIDTH / 2.0
	
	#top edge
	if (target.global_position.z - target.WIDTH / 2.0) < (global_position.z - box_height/2.0):
		target.global_position.z = global_position.z - box_height/2.0 + target.WIDTH / 2.0
		
	#bottom edge
	if (target.global_position.z + target.WIDTH / 2.0) > (global_position.z + box_height/2.0):
		target.global_position.z = global_position.z + box_height/2.0 - target.WIDTH / 2.0
	'''

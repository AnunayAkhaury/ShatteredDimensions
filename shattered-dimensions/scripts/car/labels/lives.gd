extends Label

@onready var car_camera: Camera2D = %CarCamera

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Lives: " + str(GlobalVars.car_lives)
	position = car_camera.position + Vector2(485, -300)
	

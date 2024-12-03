extends Label

@onready var player_car: PlayerCar = %Car
@onready var car_camera: Camera2D = %CarCamera

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Lives: " + str(player_car.lives)
	position = car_camera.position + Vector2(485, -300)
	

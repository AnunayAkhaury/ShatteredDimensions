extends Label

@onready var car: PlayerCar = %Car

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var time_left = %Car.timer.time_left
	if time_left == 0:
		text = "Start!!!!"
	else:
		text = "Start in : " + str(int(%Car.timer.time_left))
	

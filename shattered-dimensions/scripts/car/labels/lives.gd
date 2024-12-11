extends Label

@onready var car = $/root/CarLevel/Car


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Kill Count: " + str(car.kill_count)
	

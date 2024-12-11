extends Label

@onready var car = $/root/CarLevel/Car


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var is_enabled 
	if car.is_missile_enabled :
		is_enabled = "ENABLED " + str(car.tot_missiles)
	else:
		is_enabled = "DISABLED"
		
	text = "Bullet power up: " + is_enabled

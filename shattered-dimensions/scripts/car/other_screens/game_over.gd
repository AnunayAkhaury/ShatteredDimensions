extends Control


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("restart"):
		GlobalVars.car_lives = 5
		get_tree().change_scene_to_file("res://scenes/car/car_level.tscn")
	if Input.is_action_just_pressed("return_to_lobby"):
		get_tree().change_scene_to_file("res://scenes/prison.tscn")

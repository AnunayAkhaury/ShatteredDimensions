extends Control



func _process(delta: float) -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().change_scene_to_file("res://scenes/platformer/platformer_level_1.tscn")

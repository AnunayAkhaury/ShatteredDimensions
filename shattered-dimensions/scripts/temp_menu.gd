extends Control



func _on_platformer_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/platformer/level2/platformer_level_2.tscn")

func _on_shooter_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/shooter_level.tscn")

func _on_car_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/car_level.tscn")

func _on_ship_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/ship_level.tscn")

func _on_lobby_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/lobby.tscn")

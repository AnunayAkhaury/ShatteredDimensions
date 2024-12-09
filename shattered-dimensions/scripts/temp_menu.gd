extends Control



func _on_platformer_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/platformer/difficulty_selector.tscn")

func _on_shooter_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/run_gun/level1/level1.tscn")

func _on_car_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/run_gun/boss_level/boss_level.tscn")

func _on_ship_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/ship_level.tscn")

func _on_lobby_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/lobby.tscn")

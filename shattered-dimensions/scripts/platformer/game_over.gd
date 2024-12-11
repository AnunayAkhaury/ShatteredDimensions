extends Control


func _on_restart_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/platformer/level1/platformer_level_1.tscn")



func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/prison.tscn")

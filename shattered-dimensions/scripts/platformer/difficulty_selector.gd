extends Control

func on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/platformer/level1/platformer_level_1.tscn")


func _on_relaxed_pressed() -> void:
	GlobalVars.lives = 50
	on_button_pressed()


func _on_challenging_pressed() -> void:
	GlobalVars.lives = 35
	on_button_pressed()


func _on_very_hard_pressed() -> void:
	GlobalVars.lives = 20
	on_button_pressed()


func _on_insane_pressed() -> void:
	GlobalVars.lives = 10
	on_button_pressed()


func _on_master_pressed() -> void:
	GlobalVars.lives = 1
	on_button_pressed()

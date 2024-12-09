extends Control

@onready var instructions: Control = $Instructions2

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/prison.tscn")


func _on_instructions_pressed() -> void:
	instructions.show()


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu_screens/credits.tscn")

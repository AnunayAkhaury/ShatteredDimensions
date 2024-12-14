extends Control

@onready var instructions: Control = $Instructions2

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/intial_cutscene/intial_cutscene.tscn")


func _on_instructions_pressed() -> void:
	instructions.show()

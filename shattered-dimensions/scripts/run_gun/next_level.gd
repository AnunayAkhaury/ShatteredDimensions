extends Area2D

@export var next_level_path: String = "res://scenes/run_gun/boss_level/boss_level.tscn"  

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):  
		load_next_level()

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):  
		load_next_level()

func load_next_level() -> void:
	get_tree().change_scene_to_file(next_level_path) 

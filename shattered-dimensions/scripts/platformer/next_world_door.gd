extends Node2D

@onready var player: Player = %Player

func _on_body_entered(body: Node2D) -> void:
	if player.platformer_level == 1:
		get_tree().change_scene_to_file("res://scenes/platformer/level2/platformer_level_2.tscn")
	if player.platformer_level == 2:
		get_tree().change_scene_to_file("res://scenes/platformer/level1/platformer_level_1.tscn")

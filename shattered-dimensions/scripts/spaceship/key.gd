class_name SpaceshipKey
extends RigidBody2D


# after player has won, return to lobby
func _on_body_entered(_body: Node) -> void:
	get_tree().change_scene_to_file("res://scenes/platformer/victory.tscn")
	GlobalVars.spaceshipCompleted = true

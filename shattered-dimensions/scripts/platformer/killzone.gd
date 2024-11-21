extends Area2D

func _on_body_entered(body: Node2D) -> void:
	body.lives -= 1
	body.platformer_respawn()
	#get_tree().reload_current_scene()

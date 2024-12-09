class_name Arrow
extends Area2D


func _on_body_entered(body: Enemy) -> void:
	body.healthLevel -= 25
	queue_free()

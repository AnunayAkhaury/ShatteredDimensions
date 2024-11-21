extends Area2D

@onready var player: Player = %Player



func _on_body_entered(body: Node2D) -> void:
	print("ENTERED")
	player.double_jump = true


func _on_body_exited(body: Node2D) -> void:
	print("EXITED")
	player.double_jump = false

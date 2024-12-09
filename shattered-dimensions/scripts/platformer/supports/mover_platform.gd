extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_mover_body_entered(body: Node2D) -> void:
	animation_player.play("ascend")

func _on_mover_body_exited(body: Node2D) -> void:
	animation_player.play_backwards("ascend")

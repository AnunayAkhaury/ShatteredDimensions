extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_descender_body_entered(body: Node2D) -> void:
	animation_player.play("descend")


func _on_descender_body_exited(body: Node2D) -> void:
	animation_player.play_backwards("descend")

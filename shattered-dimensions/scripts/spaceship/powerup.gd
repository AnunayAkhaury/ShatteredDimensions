class_name Powerup
extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	animation_player.play("glow")


func _on_body_entered(body: Node2D) -> void:
	if body is Spaceship:
		get_node("Sound").play()
		body.healthLevel += 15


func _on_sound_finished() -> void:
	queue_free()
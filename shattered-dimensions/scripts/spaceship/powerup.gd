class_name Powerup
extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer


# play animation on startup of scene
func _ready() -> void:
	animation_player.play("glow")

# increase the health of spaceship upon collision
func _on_body_entered(body: Node2D) -> void:
	if body is Spaceship:
		get_node("Sound").play()
		body.healthLevel += 15

# remove from tree after picked up
func _on_sound_finished() -> void:
	queue_free()

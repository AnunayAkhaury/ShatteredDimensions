class_name Tire
extends RigidBody2D

@onready var animation_player: AnimationPlayer = %AnimationPlayer

func start_tire() -> void:
	animation_player.play("rotate")
	
func stop_tire() -> void:
	animation_player.stop()

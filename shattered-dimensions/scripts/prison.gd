extends Control

@onready var character_body = $Character

func _physics_process(delta: float) -> void:
	character_body.collision_layer &= ~2
	character_body.collision_layer |= 1

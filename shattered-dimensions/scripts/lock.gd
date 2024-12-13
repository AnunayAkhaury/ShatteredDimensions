class_name Lock
extends Node2D

@onready var sprite: Sprite2D = $Sprite2D

var locked = true

func _process(delta: float) -> void:
	if not locked:
		sprite.position.y += 10
	if sprite.position.y > 700:
		queue_free()

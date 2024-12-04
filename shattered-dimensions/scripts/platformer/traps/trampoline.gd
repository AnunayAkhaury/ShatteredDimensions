extends StaticBody2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	body.on_trampoline = true




func _on_area_2d_body_exited(body: Node2D) -> void:
	sprite.play("bounce")

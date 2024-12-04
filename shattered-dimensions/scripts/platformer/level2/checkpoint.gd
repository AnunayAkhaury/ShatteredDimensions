extends Area2D

@export var num: int

var is_hit: bool = false

@onready var sprite: AnimatedSprite2D = $Sprite2D
@onready var sound: AudioStreamPlayer = $Sound

func _on_body_entered(body: Node2D) -> void:
	if not is_hit:
		sound.play()
		body.checkpoint_num = num
		sprite.play("hit")
		is_hit = true


func _on_sprite_2d_animation_finished() -> void:
	sprite.play("hit_idle")

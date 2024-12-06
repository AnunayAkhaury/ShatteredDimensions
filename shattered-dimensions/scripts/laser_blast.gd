class_name LaserBlast
extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

var speed = 300

func _ready() -> void:
	#animation_player.play("shooting")
	pass

func _process(delta: float) -> void:
	position.x -= speed * delta

func _on_body_entered(body: Spaceship) -> void:
	body.health -= 10

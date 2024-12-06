class_name LaserBlast
extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

var speed = 300


# constantly play blast animation
func _ready() -> void:
	animation_player.play("shooting")


# move the blast across the screen
func _process(delta: float) -> void:
	position.x -= speed * delta


# on collision of blast with spaceship, decrease spaceship health and remove blast from tree
func _on_body_entered(body: Spaceship) -> void:
	body.healthLevel -= 10
	queue_free()

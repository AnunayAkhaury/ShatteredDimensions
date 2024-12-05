class_name Asteroids
extends Node2D

var animation_player

func _ready():
	for asteroid in get_children():
		asteroid.visible = true
		animation_player = asteroid.get_node("AnimationPlayer")
		animation_player.play("rotate")

class_name WeaponsFire
extends Node2D

@onready var firing: Node2D = $Firing

var speed = 300

func _process(delta: float) -> void:
	for arrow in firing.get_children():
		if arrow.visible:
			fire(arrow)
	

func fire(arrow: AnimatedSprite2D):
	
	pass

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	#if anim_name == "release":
	#	fire()
	pass

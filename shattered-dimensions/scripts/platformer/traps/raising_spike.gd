class_name RaisingSpike
extends Node2D

var forwards: bool = true

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func initialize(forwards: bool) -> void:
	self.forwards = forwards
		
func _process(delta: float) -> void:
	if forwards:
		global_position.y -= 100 * delta
	else:
		global_position.y += 100 * delta
	
	#if abs(global_position.y)
	
	print(global_position.y)

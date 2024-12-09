extends Node2D
@onready var character_body = $Character

func _ready():
	Global.run_gun = true
	character_body.collision_layer &= ~1  
	character_body.collision_layer |= 2  

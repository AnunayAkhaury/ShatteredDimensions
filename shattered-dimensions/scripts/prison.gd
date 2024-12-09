extends Control

@onready var character_body = $Character
@onready var character: Player = $Character

func _ready() -> void:
	if GlobalVars.prison_position.y < 350:
		character.position = Vector2(GlobalVars.prison_position.x, 225)
	else:
		character.position = Vector2(GlobalVars.prison_position.x, 560)

func _physics_process(delta: float) -> void:
	character_body.collision_layer &= ~2
	character_body.collision_layer |= 1
	GlobalVars.prison_position = character.position

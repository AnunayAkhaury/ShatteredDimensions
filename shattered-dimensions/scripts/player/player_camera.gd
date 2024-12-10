extends Camera2D

@export var player : CharacterBody2D

func _ready() -> void:
	make_current()
	
func _physics_process(delta: float) -> void:
	if player != null:
		global_position = player.global_position

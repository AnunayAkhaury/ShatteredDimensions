class_name OldGuy
extends Character 

@onready var sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var dialogue_box: Control

func _ready() -> void:
	change_facing(Facing.LEFT)
	sprite_2d.flip_h = true
	sprite_2d.play('idle')
	
func _physics_process(delta: float):
	_apply_gravity(delta)
	move_and_slide()
		
	

class_name Mushroom
extends Enemy


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _init() -> void:
	shoot_radius = 700
	health = 100

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if not _defeated_by_player:
		$AnimatedSprite2D.play('attack')
	else:
		$AnimatedSprite2D.play("death")
		$AnimatedSprite2D.flip_h = true
	
	super(delta)

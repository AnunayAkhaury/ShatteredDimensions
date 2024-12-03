class_name Mushroom
extends Enemy


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _init() -> void:
	shoot_radius = 700

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	$AnimatedSprite2D.play("attack")
	$AnimatedSprite2D.flip_h = true
	super(delta)

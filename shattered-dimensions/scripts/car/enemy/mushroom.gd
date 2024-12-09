class_name Mushroom
extends CarEnemy


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var dead = false

func _init() -> void:
	shoot_radius = 700
	health = 100
	
func _ready():
	$AnimatedSprite2D.flip_h = true

func _physics_process(delta: float) -> void:
	%HealthBar.value = health
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if not _defeated_by_player:
		$AnimatedSprite2D.play("attack")
	else:
		if not dead:
			$AnimatedSprite2D.play('death')
			$AnimatedSprite2D.flip_h = true
			dead = true
			
	super(delta)

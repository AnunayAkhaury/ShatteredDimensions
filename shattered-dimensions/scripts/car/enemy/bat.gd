class_name Bat
extends CarEnemy


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var dead = false

func _init() -> void:
	shoot_radius = 500
	health = 100
	
func _ready():
	$AnimatedSprite2D.flip_h = true
	%HealthBar.visible = false
	
func _physics_process(delta: float) -> void:
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if not _defeated_by_player:
		$AnimatedSprite2D.play("attack")
	else:
		if not dead:
			$EnemyDead.play()
			$AnimatedSprite2D.play('death')
			$AnimatedSprite2D.flip_h = true
			dead = true
			
	
	if %Car.position.x > position.x:
		$AnimatedSprite2D.flip_h = false
	
	super(delta)

class_name Police
extends Character

# Constants
const SPEED = 100
const JUMP_VELOCITY = -400.0
const SHOOT_INTERVAL = 0.8
var shoot_timer = SHOOT_INTERVAL
var health = 100 
var character_type = Characters.Type.POLICE
var killed = false 
@onready var bullet = preload("res://scenes/car/bullet.tscn")

func _ready() -> void:
	$AnimatedSprite2D.play("idle")

func _physics_process(delta: float) -> void:
	
	if killed:
		$AnimatedSprite2D.play("dead")
		queue_free()
		GlobalVars.car_level_stat = "Player Won"
		return 
	%PoliceHealth.value = health
	# Apply gravity if not on the floor
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	move_and_slide()
	
	if GlobalVars.car_level_stat == 'battle':
		shoot_timer -= delta
		if shoot_timer <= 0:
			shoot_player(%CarPlayer)
			shoot_timer = SHOOT_INTERVAL
		follow(%CarPlayer)

# Command Functions
func jump() -> void:
	if is_on_floor():
		velocity.y = JUMP_VELOCITY
		$AnimatedSprite2D.play("jump")

func left() -> void:
	velocity.x = -SPEED
	$AnimatedSprite2D.flip_h = true  # Face left
	$AnimatedSprite2D.play("run")

func right() -> void:
	velocity.x = SPEED
	$AnimatedSprite2D.flip_h = false  # Face right
	$AnimatedSprite2D.play("run")

func stop()-> void:
	velocity.x = 0
	$AnimatedSprite2D.play("idle")

func shoot_player(target: Character)-> void:
	var cur_bullet = bullet.instantiate() as Bullet
	cur_bullet.damage = 10
	cur_bullet.bullet_origin = Characters.Type.POLICE
	cur_bullet.start_pos = global_position
	cur_bullet.target_pos = target.global_position
	add_sibling(cur_bullet)
	   
func follow(target: Character):
	var distance = target.position.x - position.x
	if target.velocity.x == 0:
		stop()
	elif distance > 20:
		right()
	else:
		left()

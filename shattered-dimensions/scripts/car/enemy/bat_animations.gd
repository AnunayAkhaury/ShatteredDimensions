extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var bullet = preload("res://scenes/car/bullet.tscn")



# Time interval for shooting in seconds
const SHOOT_INTERVAL = .5
var shoot_timer = SHOOT_INTERVAL

func _physics_process(delta: float) -> void:
	$AnimatedSprite2D.play("flight")
	$AnimatedSprite2D.flip_h = true

	# Add the gravity
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Update the shoot timer and check if it's time to shoot
	shoot_timer -= delta
	if shoot_timer <= 0:
		_shoot()
		shoot_timer = SHOOT_INTERVAL  # Reset the timer

	'''
	# Handle jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	'''

func _shoot() -> void:

	var cur_bullet = bullet.instantiate() as Node2D
	cur_bullet.car_pos = $AnimatedSprite2D.position  

	cur_bullet.target_loc = %Car.position
	add_sibling(cur_bullet)
	

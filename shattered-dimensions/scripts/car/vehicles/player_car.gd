class_name PlayerCar
extends Vehicle

var _lives: int

@onready var bullet = preload("res://scenes/car/bullet.tscn")

func _init() -> void:
	_lives = 5
	_speed = 500
	_max_speed = 40
	super()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_wheels = [%FrontWheel, %BackWheel]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move_right"):
		#start_tires()
		for wheel in _wheels:
			if wheel.angular_velocity < _max_speed:
				wheel.apply_torque_impulse(_speed * delta * 60)
	
	if Input.is_action_pressed("move_left"):
		#start_tires()
		for wheel in _wheels:
			if wheel.angular_velocity >  -_max_speed:
				wheel.apply_torque_impulse(-_speed * delta * 60)
				
	if Input.is_action_just_pressed("shoot"):
		_shoot()
		
	#if health <= 0:
		#_lives -= 1
		#health = 100
		
	super(delta)
		
func _shoot() -> void:
	var cur_bullet = bullet.instantiate() as Bullet
	cur_bullet.damage = 2
	cur_bullet.car_pos = position
	cur_bullet.target_loc = get_global_mouse_position()
	add_sibling(cur_bullet)
	
	

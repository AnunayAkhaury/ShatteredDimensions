class_name CarController
extends RigidBody2D

var _speed: float = 500
var _max_speed: float = 40
var _wheels = []

@onready var bullet = preload("res://scenes/car/bullet.tscn")

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
		
func _shoot() -> void:
	var cur_bullet = bullet.instantiate() as Bullet
	cur_bullet.car_pos = position
	cur_bullet.target_loc = get_global_mouse_position()
	add_sibling(cur_bullet)

class_name CarController
extends RigidBody2D

var _speed: float = 6000
var _max_speed: float = 300
var 	_speed_factor: float
var _wheels = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_wheels = [%FrontWheel, %BackWheel]
	_speed_factor = 1.25

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var move_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")

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
				
		#position.x += move_input * _speed_factor
	#else:
		#stop_tires()
	
#func start_tires() -> void:
	#_front_tire.start_tire()
	#_back_tire.start_tire()
	#
#func stop_tires() -> void:
	#_front_tire.stop_tire()
	#_back_tire.stop_tire()
		

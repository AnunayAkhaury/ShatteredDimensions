class_name SwatVan
extends RigidBody2D

var _speed: float = 500
var _max_speed: float = 60
var _wheels = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_wheels = [%FrontWheel, %BackWheel]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for wheel in _wheels:
		if wheel.angular_velocity < _max_speed:
			wheel.apply_torque_impulse(_speed * delta * 60)

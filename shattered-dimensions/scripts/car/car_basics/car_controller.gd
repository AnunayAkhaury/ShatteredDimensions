class_name CarController
extends Node2D

var _speed_factor: float

@onready var _front_tire: Tire = %FrontTire
@onready var _back_tire: Tire = %BackTire


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_speed_factor = 1.25

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var move_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")

	if move_input > 0:
		start_tires()
		position.x += move_input * _speed_factor
	else:
		stop_tires()
	
func start_tires() -> void:
	_front_tire.start_tire()
	_back_tire.start_tire()
	
func stop_tires() -> void:
	_front_tire.stop_tire()
	_back_tire.stop_tire()
		

class_name Vehicle
extends RigidBody2D

var health: int
var character_type: Characters.Type

var _speed: float
var _max_speed: float
var _wheels = []

func _init() -> void:
	health = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_wheels = [%FrontWheel, %BackWheel]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if health <= 0:
		_max_speed = 0
		_speed = 0
	
func take_damage(_damage: int) -> void:
	health -= _damage

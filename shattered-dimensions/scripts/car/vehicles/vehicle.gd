class_name Vehicle
extends RigidBody2D

var _START_DELAY: float = 4

var health: int
var character_type: Characters.Type
var timer: Timer

var _speed: float
var _max_speed: float
var _wheels = []

func _init() -> void:
	_max_speed = 0
	_speed = 0
	health = 100
	
	timer = Timer.new()
	timer.one_shot = true
	timer.wait_time = _START_DELAY
	timer.autostart = true
	timer.timeout.connect(_delayed_action)
	add_child(timer)



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
	
func _delayed_action() -> void:
	pass
	

class_name Bullet
extends Area2D

var _POS: Vector2 = Vector2(30, -90)

var damage: int
var car_pos: Vector2
var target_loc: Vector2
var _speed = 1000
var _direction: Vector2
var _timer: Timer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = car_pos + _POS
	_direction = (target_loc - position).normalized()
	#_timer = Timer.new()
	#_timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position += _speed * _direction * delta
	#if _timer.is_stopped():
		#queue_free()

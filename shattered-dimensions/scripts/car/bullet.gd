class_name Bullet
extends Area2D

var damage: int
var start_pos: Vector2
var target_pos: Vector2
var _speed = 1000
var _direction: Vector2
var _timer: Timer

@onready var bullet = preload("res://scenes/car/bullet.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = start_pos
	_direction = (target_pos - position).normalized()
	#_timer = Timer.new()
	#_timer.start()x

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position += _speed * _direction * delta
	#if _timer.is_stopped():
		#queue_free()

class_name Bullet
extends Area2D

var _POS: Vector2 = Vector2(30, -90)

var speed = 1000
var car_pos: Vector2
var target_loc: Vector2
var direction: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = car_pos + _POS
	direction = (target_loc - position).normalized()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position += speed * direction * delta

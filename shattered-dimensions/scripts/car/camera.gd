extends Camera2D

var _offset: float = 200

@onready var car: RigidBody2D = %Car

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = car.position.y
	position.x = car.position.x + _offset
	
	pass

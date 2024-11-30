extends Camera2D

var _offset: float = 400

@onready var car: RigidBody2D = %Car

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y = 375
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x = car.position.x + _offset
	
	pass

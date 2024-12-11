extends Camera2D

var OFFSET: float = -200

@onready var car: RigidBody2D = %Car

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y = 375


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position.x = car.position.x + OFFSET
	
	if %SwatVan._defeated_by_player and OFFSET < 200:
		OFFSET += 1
		

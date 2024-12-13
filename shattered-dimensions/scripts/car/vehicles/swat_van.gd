class_name SwatVan
extends Vehicle

var _defeated_by_player: bool
var _showed_defeated_label: bool



@onready var _escaped_label = preload("res://scenes/car/labels/defeated_police.tscn")
@onready var camera: Camera2D = %CarCamera

func _init() -> void:
	character_type = Characters.Type.ENEMY
	_defeated_by_player = false # CHANGE THIS BACK TO FALSE
	_showed_defeated_label = false
	#_speed = 600
	#_max_speed = 60
	super()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_wheels = [%FrontWheel, %BackWheel]
	%PoliceSiren.play()
	%CarStart.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if health > 0:
		for wheel in _wheels:
			if wheel.angular_velocity < _max_speed:
				wheel.apply_torque_impulse(_speed * delta * 60)
			
	
	if health <= 0 and _defeated_by_player and !_showed_defeated_label:
		var escaped_label = _escaped_label.instantiate() as Label
		_showed_defeated_label = true
		escaped_label.position.x = %Car.position.x + 300
		escaped_label.position.y = %Car.position.y - 400
		add_sibling(escaped_label)
		
	%HealthBar.value = health
	
	super(delta)
	
func _delayed_action() -> void:
	_speed = 600
	_max_speed = 50

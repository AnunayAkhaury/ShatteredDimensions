class_name PlayerCar
extends Vehicle

var _RESPAWN_DELAY: float = 3
var _BOOST_SPEED_TIME: float = 2
var _respawn_timer: Timer
var _bullet_damage: float

var boost_speed: bool
var boost_speed_time: float

@onready var bullet = preload("res://scenes/car/bullet.tscn")

func _init() -> void:
	character_type = Characters.Type.PLAYER_CAR
	boost_speed = false
	boost_speed_time = _BOOST_SPEED_TIME

	_speed = 600
	_max_speed = 40
	_bullet_damage = 0
	
	_respawn_timer = Timer.new()
	_respawn_timer.autostart = true
	_respawn_timer.wait_time = _RESPAWN_DELAY
	_respawn_timer.timeout.connect(respawn)
	
	super()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_wheels = [%FrontWheel, %BackWheel]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move_right"):
		#start_tires()
		for wheel in _wheels:
			if wheel.angular_velocity < _max_speed:
				wheel.apply_torque_impulse(_speed * delta * 60)
	
	if Input.is_action_pressed("move_left"):
		#start_tires()
		for wheel in _wheels:
			if wheel.angular_velocity >  -_max_speed:
				wheel.apply_torque_impulse(-_speed * delta * 60)
				
	if Input.is_action_just_pressed("shoot"):
		_shoot()
		
	if boost_speed:
		for wheel in _wheels:
			wheel.apply_torque_impulse((_speed) * delta * 60)
		boost_speed_time -= delta
		if boost_speed_time <= 0:
			boost_speed = false
			boost_speed_time = _BOOST_SPEED_TIME 
			
	%HealthBar.value = health
	
	if GlobalVars.car_lives <= 0:
		get_tree().change_scene_to_file("res://scenes/car/game_over.tscn")
	elif health <= 0:
		add_child(_respawn_timer)
		
	_draw_aim()
	super(delta)
	
func _draw_aim() -> void:
	# Circle properties
	#var center = get_viewport().get_mouse_position()
	var circle_radius = 50.0
	var circle_color = Color(0.2, 0.6, 1.0)  # Blue color
	var line_width = 3.0

	# Plus sign properties
	var plus_color = Color(1.0, 0.0, 0.0)  # Red color
	var plus_length = 30.0
	
	# Draw the circle
	draw_circle(Vector2.ZERO, circle_radius, circle_color)

	# Draw the plus sign
	# Vertical line
	draw_line(Vector2(0, -plus_length / 2), Vector2(0, plus_length / 2), plus_color, line_width)
	# Horizontal line
	draw_line(Vector2(-plus_length / 2, 0), Vector2(plus_length / 2, 0), plus_color, line_width)
	
func _shoot() -> void:
	var cur_bullet = bullet.instantiate() as Bullet
	cur_bullet.damage = _bullet_damage
	cur_bullet.bullet_origin = Characters.Type.PLAYER_CAR
	cur_bullet.start_pos = position + Vector2(30, -90)
	cur_bullet.target_pos = get_global_mouse_position()
	add_sibling(cur_bullet)
	
func respawn() -> void:
	GlobalVars.car_lives -= 1
	health = 100
	get_tree().reload_current_scene()
	
func _delayed_action() -> void:
	_speed = 600
	_max_speed = 40
	_bullet_damage = 5
	
	

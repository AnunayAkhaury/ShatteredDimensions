class_name PlayerCar
extends Vehicle

var _RESPAWN_DELAY: float = 2
var _BOOST_SPEED_TIME: float = 2
var _MIN_KILL_FOR_MISSILE = 4
var _respawn_timer: Timer
var _bullet_damage: float
var _caught_by_police: bool


var tot_missiles: int
var kills_until_missile: int
var kill_count: int
var boost_speed: bool
var boost_speed_time: float
var movement_enabled: bool = true
var input_enabled: bool = true
var is_missile_enabled: bool

@onready var bullet = preload("res://scenes/car/bullet.tscn")
@onready var missile = preload("res://scenes/car/missile.tscn")
@onready var health_bar: ProgressBar = %CarCamera.get_child(0)

func _init() -> void:
	tot_missiles = 0
	kill_count = 0
	character_type = Characters.Type.PLAYER_CAR
	boost_speed = false
	boost_speed_time = _BOOST_SPEED_TIME
	kills_until_missile = _MIN_KILL_FOR_MISSILE
	is_missile_enabled = false


	_speed = 600
	_max_speed = 40
	_bullet_damage = 0
	
	_respawn_timer = Timer.new()
	#_respawn_timer.autostart = true
	_respawn_timer.wait_time = _RESPAWN_DELAY
	_respawn_timer.timeout.connect(respawn)
	add_child(_respawn_timer)
	
	super()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalVars.car_level_stat = "Car Level Entered"
	_wheels = [%FrontWheel, %BackWheel]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:	
	if kills_until_missile == 0:
		tot_missiles += 1
		kills_until_missile = _MIN_KILL_FOR_MISSILE
	
	if not movement_enabled:
		stop_car()
	else:
		freeze = false
		
	if not input_enabled:
		stop_car()
	else:	
		if Input.is_action_pressed("move_right"):
			for wheel in _wheels:
				if wheel.angular_velocity < _max_speed:
					wheel.apply_torque_impulse(_speed * delta * 60)
		
		if Input.is_action_pressed("move_left"):
			for wheel in _wheels:
				if wheel.angular_velocity >  -_max_speed:
					wheel.apply_torque_impulse(-_speed * delta * 60)
			
		if Input.is_action_just_pressed("enable_missile") and tot_missiles > 0:
			is_missile_enabled = !is_missile_enabled
			
		if Input.is_action_just_pressed("shoot"):
			_shoot()
			
		if Input.is_action_just_pressed("restart"):
			health = 0
			
		if Input.is_action_just_pressed("pause"):
			GlobalVars.car_level_stat = "Not On Car Level"
			GlobalVars.car_lives = 5
			get_tree().change_scene_to_file("res://scenes/prison.tscn")
				
		if boost_speed:
			for wheel in _wheels:
				wheel.apply_torque_impulse((_speed) * delta * 60)
			boost_speed_time -= delta
			if boost_speed_time <= 0:
				boost_speed = false
				boost_speed_time = _BOOST_SPEED_TIME 
			
	
	health_bar.value = health
	if GlobalVars.car_lives <= 0:
		get_tree().change_scene_to_file("res://scenes/car/game_over.tscn")
	elif health <= 0 and _respawn_timer.is_stopped():
		GlobalVars.car_level_stat = 'Game Over'
		_respawn_timer.start()
		
	super(delta)
	
func _shoot() -> void:
	if is_missile_enabled:
		_shoot_missile()
	else:
		var cur_bullet = bullet.instantiate() as Bullet
		cur_bullet.damage = _bullet_damage
		cur_bullet.ammo_origin = Characters.Type.PLAYER_CAR
		cur_bullet.start_pos = position + Vector2(30, -90)
		cur_bullet.target_pos = get_global_mouse_position()
		add_sibling(cur_bullet)
	
func _shoot_missile() -> void:
	var cur_bullet = missile.instantiate() as Missile
	cur_bullet.ammo_origin = Characters.Type.PLAYER_CAR
	cur_bullet.start_pos = position + Vector2(30, -90)
	cur_bullet.target_pos = get_global_mouse_position()
	add_sibling(cur_bullet)
	is_missile_enabled = false
	tot_missiles -= 1

func respawn() -> void:
	GlobalVars.car_lives -= 1
	health = 100
	if _caught_by_police:
		get_tree().change_scene_to_file("res://scenes/car/player_arrest.tscn")
		_caught_by_police = false
	else:
		get_tree().reload_current_scene()
	
func _delayed_action() -> void:
	_speed = 600
	_max_speed = 40
	_bullet_damage = 15
	
func stop_car():
	freeze = true
	for wheel in _wheels:
		wheel.linear_velocity = Vector2.ZERO
		wheel.angular_velocity = 0	

class_name PlayerCar
extends Vehicle

var _RESPAWN_DELAY: float = 7
var _respawn_timer: Timer

@onready var bullet = preload("res://scenes/car/bullet.tscn")

func _init() -> void:
	character_type = Characters.Type.PLAYER_CAR
	_speed = 600
	_max_speed = 40
	_respawn_timer = Timer.new()
	_respawn_timer.autostart = true
	_respawn_timer.wait_time = 2
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
		
	%HealthBar.value = health
	
	if GlobalVars.car_lives <= 0:
		get_tree().change_scene_to_file("res://scenes/car/game_over.tscn")
	elif health <= 0:
		add_child(_respawn_timer)
		
	super(delta)
		
func _shoot() -> void:
	var cur_bullet = bullet.instantiate() as Bullet
	cur_bullet.damage = 2
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
	
	

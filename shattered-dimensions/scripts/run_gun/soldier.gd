class_name Soldier
extends BaseEnemy

@export var is_shooter : bool = false
@onready var muzzle : Marker2D = $Muzzle
var muzzle_position
@onready var shot_timer : Timer = $ShotTimer

func _ready() -> void:
	bind_player_input_commands()
	if patrol_points != null:
		print("Patrol points:", patrol_points.get_children())
		number_of_points = patrol_points.get_children().size()
		for point in patrol_points.get_children():
			point_positions.append(point.global_position)
		current_point = point_positions[current_point_position]
	muzzle_position = muzzle.position
	if is_shooter:
		shot_timer.start()
func _physics_process(delta: float) -> void:
	apply_gravity(delta)
	move_and_slide()
	if patrol_points:
		patrol.execute(self)

		
func update_muzzle_position():
	if facing == Character.Facing.RIGHT:
		muzzle.position.x = abs(muzzle_position.x) 
	else:
		muzzle.position.x = -abs(muzzle_position.x) 

func _on_shot_timer_timeout() -> void:
	shoot.execute(self)

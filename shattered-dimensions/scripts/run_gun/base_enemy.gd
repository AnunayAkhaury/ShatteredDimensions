class_name BaseEnemy
extends Character

const GRAVITY = 1000
const SPEED = 1500
  
enum State {Idle, Walk}
var current_state : State
var direction : Vector2 =  Vector2.LEFT
var number_of_points : int
var point_positions : Array[Vector2] = []
var current_point : Vector2
var current_point_position: int
var patrol : Command

@export var speed: float = 100
@export var health: int = 100
@export var patrol_points : Node

@onready var animatedsprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	bind_player_input_commands()
	
	if patrol_points != null:
		print("Patrol points:", patrol_points.get_children())
		number_of_points = patrol_points.get_children().size()
		for point in patrol_points.get_children():
			point_positions.append(point.global_position)
		current_point = point_positions[current_point_position]
	
func _physics_process(delta: float) -> void:
	apply_gravity(delta)
	
func apply_gravity(delta: float) -> void:
	velocity.y += GRAVITY * delta

func idle_state(delta:float):
	pass
	
func walk_state(delta:float):
	left_cmd.execute(self)
	
func bind_player_input_commands():
	right_cmd = EnemyMoveRightCommand.new()
	left_cmd = EnemyMoveLeftCommand.new()
	print(left_cmd)
	up_cmd = JumpCommand.new()
	#fire1 = AttackCommand.new()
	idle = IdleCommand.new()
	patrol = PatrolCommand.new()

func _on_hurtbox_area_entered(area: Area2D) -> void:
	print("enemy hit")

class_name BaseEnemy
extends Character

const GRAVITY = 1000
const SPEED = 1500
  
var enemy_death_effect = preload("res://scenes/run_gun/enemies/enemy_death_effect.tscn")
var direction : Vector2 =  Vector2.LEFT
var number_of_points : int
var point_positions : Array[Vector2] = []
var current_point : Vector2
var current_point_position: int
var patrol : Command
var shoot_command: Command
var jump : Command
var follow : Command
var damage_cooldown : bool =false
var attack_command: Command
var boss_follow_command: Command
var combo_attack_command : Command
var boss_shoot_command : Command
var boss_summon_command : Command

@export var health: int = 3
@export var patrol_points : Node
@export var damage_amount : int = 1
@export var initial_facing: bool = false
@export var player_node_path: NodePath
@onready var animatedsprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var hitflashplayer : AnimationPlayer = $HitFlashPlayer

var player : Node2D
var bullet = preload("res://scenes/run_gun/enemies/enemy_projectile/enemy_bullet.tscn")

enum STATE { IDLE, FOLLOW, SHOOT, JUMP, COMBO, ATTACK }
var current_state: STATE = STATE.IDLE
var status : Command.Status 

func _ready() -> void:
	player = get_node_or_null(player_node_path)
	bind_player_input_commands()
	update_material()
	if patrol_points != null:
		number_of_points = patrol_points.get_children().size()
		for point in patrol_points.get_children():
			point_positions.append(point.global_position)
		current_point = point_positions[current_point_position]
	if initial_facing:
		animatedsprite.flip_h = true
		direction = Vector2.LEFT
		
func _physics_process(delta: float) -> void:
	apply_gravity(delta)
	move_and_slide()
	if patrol_points:
		patrol.execute(self)
		
func apply_gravity(delta: float) -> void:
	velocity.y += GRAVITY * delta

func idle_state(delta:float):
	pass
	
func walk_state(delta:float):
	left_cmd.execute(self)
	
func bind_player_input_commands():
	right_cmd = EnemyMoveRightCommand.new()
	left_cmd = EnemyMoveLeftCommand.new()
	up_cmd = JumpCommand.new()
	#fire1 = AttackCommand.new()
	idle = IdleCommand.new()
	patrol = PatrolCommand.new()
	shoot = EnemyShootCommand.new()
	jump = EnemyJumpCommand.new()
	attack_command = EnemyAttackCommand.new()
	combo_attack_command = ComboAttackCommand.new()
	boss_follow_command = BossFollowCommand.new(player as Character)
	boss_shoot_command = BossShootCommand.new()
	boss_summon_command = BossSummonCommand.new()
	
func unbind_player_input_commands():
	right_cmd = Command.new()
	left_cmd = Command.new()
	up_cmd = Command.new()
	fire1 = Command.new()
	idle = Command.new()
	run_shoot_left = Command.new()
	run_shoot = Command.new()
	shoot = Command.new()
	attack_command = Command.new()
	combo_attack_command = Command.new()
	boss_follow_command = Command.new()
	boss_shoot_command = Command.new()
	boss_summon_command = Command.new()
	
func _on_hurtbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		return
	if area == self.get_node("HitBox"):  
		return
	if area.get_parent().has_method("get_damage_amount"):
		hitflashplayer.play("hit_flash")
		var node = area.get_parent() as Node
		health -= node.damage_amount
		if health <= 0:
			var enemy_death_effect_instance = enemy_death_effect.instantiate() as Node2D
			enemy_death_effect_instance.global_position = global_position
			get_parent().add_child(enemy_death_effect_instance)
			queue_free()

func _on_attack_timer_timeout() -> void:
	damage_cooldown = false

func set_bullet_type(new_bullet: PackedScene) -> void:
	bullet = new_bullet
	
func update_material():
	$AnimatedSprite2D.material = $AnimatedSprite2D.material.duplicate()

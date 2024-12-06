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
var damage_cooldown : bool =false

@export var speed: float = 100
@export var health: int = 3
@export var patrol_points : Node
@export var damage_amount : int = 1
@export var initial_facing: bool = false
@onready var animatedsprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var hitflashplayer : AnimationPlayer = $HitFlashPlayer
var bullet = preload("res://scenes/run_gun/enemies/enemy_projectile/enemy_bullet.tscn")

func _ready() -> void:
	bind_player_input_commands()
	$AnimatedSprite2D.material = $AnimatedSprite2D.material.duplicate()
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
	print(left_cmd)
	up_cmd = JumpCommand.new()
	#fire1 = AttackCommand.new()
	idle = IdleCommand.new()
	patrol = PatrolCommand.new()
	shoot = EnemyShootCommand.new()

func _on_hurtbox_area_entered(area: Area2D) -> void:
	if damage_cooldown or area.is_in_group("enemy"):
		return
	if area == self.get_node("HitBox"):  
		return
	if area.get_parent().has_method("get_damage_amount"):
		hitflashplayer.play("hit_flash")
		var node = area.get_parent() as Node
		health -= node.damage_amount
		print(health)
		if health <= 0:
			var enemy_death_effect_instance = enemy_death_effect.instantiate() as Node2D
			enemy_death_effect_instance.global_position = global_position
			get_parent().add_child(enemy_death_effect_instance)
			queue_free()
		else:
			$AttackTimer.start()
			damage_cooldown = true

func _on_attack_timer_timeout() -> void:
	damage_cooldown = false
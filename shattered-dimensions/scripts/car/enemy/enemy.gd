class_name CarEnemy
extends CharacterBody2D

@onready var bullet = preload("res://scenes/car/bullet.tscn")
@onready var car = %Car

const SHOOT_INTERVAL = 2
var shoot_radius = 500
var shoot_timer = SHOOT_INTERVAL
var health: int
var character_type: Characters.Type = Characters.Type.ENEMY
var _defeated_by_player = false



func _physics_process(delta: float) -> void:
	if not _defeated_by_player:
		shoot_timer -= delta
		if shoot_timer <= 0 and _is_within_shoot_radius():
			_shoot()
			shoot_timer = SHOOT_INTERVAL

func _is_within_shoot_radius() -> bool:
	return position.distance_to(car.position) <= shoot_radius

func _shoot() -> void:
	var cur_bullet = bullet.instantiate() as Bullet
	cur_bullet.damage = 20
	cur_bullet.ammo_origin = Characters.Type.ENEMY
	cur_bullet.start_pos = position
	cur_bullet.target_pos = car.position
	cur_bullet.get_child(0).animation = 'enemy_bullet'
	add_sibling(cur_bullet)

func take_damage(damage: int) -> void:
	health -= damage

class_name Enemy
extends CharacterBody2D


@onready var bullet = preload("res://scenes/car/bullet.tscn")


# Time interval for shooting in seconds
const SHOOT_INTERVAL = .5
var shoot_timer = SHOOT_INTERVAL
var health: int
var character_type: Characters.Type = Characters.Type.ENEMY

func _init() -> void:
	health = 100

func _physics_process(delta: float) -> void:
	# Update the shoot timer and check if it's time to shoot
	shoot_timer -= delta
	if shoot_timer <= 0:
		_shoot()
		shoot_timer = SHOOT_INTERVAL  # Reset the timer

func _shoot() -> void:
	var cur_bullet = bullet.instantiate() as Bullet
	cur_bullet.damage = 1
	cur_bullet.bullet_origin = Characters.Type.ENEMY
	cur_bullet.start_pos = position
	cur_bullet.target_pos = %Car.position
	add_sibling(cur_bullet)
	
func take_damage(damage: int) -> void:
	health -= damage
	

extends AnimatedSprite2D
class_name EnemyBullet

@export var bullet_impact_effect = preload("res://scenes/run_gun/enemies/enemy_projectile/enemy_bullet_impact.tscn")

var speed : int = 600
var direction : int
var damage_amount : int = 1

func _physics_process(delta: float) -> void:
	move_local_x(direction * speed * delta)

func _on_timer_timeout():
	queue_free()

func bullet_impact():
	var bullet_impact_instance = bullet_impact_effect.instantiate() as Node2D
	bullet_impact_instance.global_position = global_position
	get_parent().add_child(bullet_impact_instance)
	queue_free()

func get_enemyproj_amount() -> int:
		return damage_amount


func _on_hitbox_area_entered(area: Area2D) -> void:
	bullet_impact()


func _on_hitbox_body_entered(body: Node2D) -> void:
	bullet_impact()

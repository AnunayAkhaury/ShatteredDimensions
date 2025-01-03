extends AnimatedSprite2D

var bullet_impact_effect = preload("res://scenes/run_gun/enemies/scout/scout_bullet_impact.tscn")

var speed : int = 400
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


func _on_hit_box_area_entered(area: Area2D) -> void:
	bullet_impact()


func _on_hit_box_body_entered(body: Node2D) -> void:
	bullet_impact()

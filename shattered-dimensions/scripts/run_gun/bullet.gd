extends AnimatedSprite2D
class_name BaseBullet 

@export var bullet_impact_effect: PackedScene = preload("res://scenes/run_gun/bullet_impact.tscn")
@export var speed: int = 600
@export var damage_amount: int = 1

var direction : int

var bullet_origin = Characters.Type.PLAYER
func _physics_process(delta: float) -> void:
	move_local_x(direction * speed * delta)

func _on_timer_timeout():
	queue_free()


func _on_hit_box_area_entered(area: Area2D) -> void:
	if not area.is_in_group("player"):
		bullet_impact()


func _on_hit_box_body_entered(body: Node2D) -> void:
	if not body.is_in_group("player"):
		bullet_impact()

func bullet_impact(): 
	var bullet_impact_instance = bullet_impact_effect.instantiate() as Node2D
	bullet_impact_instance.global_position = global_position
	get_parent().add_child(bullet_impact_instance)
	queue_free()

func get_damage_amount() -> int:
		return damage_amount

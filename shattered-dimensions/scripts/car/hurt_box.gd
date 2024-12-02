class_name HurtBox
extends Area2D


func _init() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(bullet:Bullet) -> void:
	if owner.has_method("take_damage"):
		owner.take_damage(bullet.damage)
		if owner.health <= 0 and owner.health + bullet.damage > 0 :
			owner._defeated_by_player = true
	bullet.queue_free()

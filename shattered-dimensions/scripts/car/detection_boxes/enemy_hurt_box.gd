class_name EnemyHurtBox
extends Area2D


func _init() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(bullet:Bullet) -> void:
	if owner is not SwatVan:
		bullet.damage = 25
		
	if bullet.bullet_origin != owner.character_type:
		owner.take_damage(bullet.damage)
		if owner.health <= 0 and owner.health + bullet.damage > 0:
			owner._defeated_by_player = true
		bullet.queue_free()

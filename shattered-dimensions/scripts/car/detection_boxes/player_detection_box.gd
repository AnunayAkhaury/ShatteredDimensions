class_name PlayerDetectionBox
extends Area2D


func _init() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(object: Area2D) -> void:	
	if object is Bullet:
		var bullet = object
		bullet.damage = 7
		if bullet.bullet_origin != owner.character_type:
			owner.take_damage(bullet.damage)
			if owner.health <= 0 and owner.health + bullet.damage > 0 and owner.character_type == Characters.Type.ENEMY:
				owner._defeated_by_player = true
			bullet.queue_free()
			
	if object is Fuel:
		owner.boost_speed = true
		object.queue_free()
		
	if object is Health:
		owner.health = clampi(owner.health + 20, 0, 100)
		object.queue_free()

class_name EnemyHurtBox
extends Area2D

func _init() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(ammo:Ammo) -> void:
	if owner is SwatVan:
		%CarHit.play()
		
	if owner is SwatVan:
		ammo.damage /= 3
		
	if ammo.ammo_origin != owner.character_type:
		owner.take_damage(ammo.damage)
		if owner.health <= 0 and owner.health + ammo.damage > 0:
			owner._defeated_by_player = true
			var car = $/root/CarLevel/Car
			car.kill_count += 1
			car.kills_until_missile = clampi(car.kills_until_missile - 1, 0, 5)
		ammo.queue_free()

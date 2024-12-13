class_name Office_HitBox
extends Area2D


var damage = 8
func _init() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(object: Area2D) -> void:	
	if GlobalVars.car_level_stat == 'Battle':
		if object is Bullet and object.ammo_origin == Characters.Type.PLAYER:	
			if owner.health > 0:
				owner.health -= damage
				if owner.health <= 0:
					owner.health = 0
					owner.killed = true
	
	
	
		

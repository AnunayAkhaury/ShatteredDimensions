class_name Office_HitBox
extends Area2D


var damage = 25
func _init() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(object: Area2D) -> void:	
	if GlobalVars.car_level_stat == 'Battle':
		if object is Bullet and object.bullet_origin == Characters.Type.PLAYER:
			if owner.health - damage >= 0:
				owner.health -= damage
			else:
				owner.health = 0
				owner.killed = true
	
	
	
		

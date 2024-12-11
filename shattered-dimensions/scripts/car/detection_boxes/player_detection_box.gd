class_name PlayerDetectionBox
extends Area2D


func _init() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(object: Area2D) -> void:		
	
	
	if object is Bullet:
		var bullet = object
		if bullet.bullet_origin != owner.character_type:
			owner.take_damage(bullet.damage)
			if owner.health <= 0 and owner.health + bullet.damage > 0 and owner.character_type == Characters.Type.ENEMY:
				owner._defeated_by_player = true
			bullet.queue_free()
			
		
	if object is Fuel:
		owner.boost_speed = true
		object.queue_free()
		
	if object is Health:
		owner.health = clampi(owner.health + 50, 0, 100)
		object.queue_free()
		
	if object is KeyCheckpoint:
		owner.movement_enabled = false
		owner.is_missile_enabled = true
		
	if object is Key:
		await get_tree().create_timer(.25).timeout
		get_tree().change_scene_to_file("res://scenes/platformer/victory.tscn")
	
	if object is Traps and GlobalVars.car_level_stat != "Battle Over":
		owner.input_enabled = false
		var player = $/root/CarLevel/CarPlayer
		await get_tree().create_timer(4).timeout
		%Player.visible = false
		GlobalVars.car_level_stat = "Battle"
		player.visible = true
		object.queue_free()
		
	if object is Traps_Two:
		owner.movement_enabled = false
		owner.health = 0
		
	
	
		

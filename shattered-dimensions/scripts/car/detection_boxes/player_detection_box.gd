class_name PlayerDetectionBox
extends Area2D


func _init() -> void:
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(object: Area2D) -> void:		
	
	
	if object is Bullet and GlobalVars.car_level_stat != "Battle":
		
		var bullet = object
		if bullet.ammo_origin != owner.character_type:
			owner.take_damage(bullet.damage)
			%CarHit.play()
			if owner.health <= 0 and owner.health + bullet.damage > 0 and owner.character_type == Characters.Type.ENEMY:
				owner._defeated_by_player = true
			bullet.queue_free()
			
		
	if object is Fuel:
		%FuelRecharge.play()
		owner.boost_speed = true
		object.queue_free()
		
	if object is Health:
		%BlingSound.play()
		owner.health = clampi(owner.health + 25, 0, 100)
		object.queue_free()
		
	if object is KeyCheckpoint:
		owner.movement_enabled = false
		
	if object is Key:
		%BlingSound.play()
		await get_tree().create_timer(.25).timeout
		GlobalVars.carCompleted = true
		GlobalVars.car_level_stat = "game_over"
		get_tree().change_scene_to_file("res://scenes/platformer/victory.tscn")
	
	if object is Traps and GlobalVars.car_level_stat != "Battle Over":
		%TirePuncture.play()
		owner.input_enabled = false
		var player = $/root/CarLevel/CarPlayer
		await get_tree().create_timer(4).timeout
		%Player.visible = false
		GlobalVars.car_level_stat = "Battle"
		player.visible = true
		object.queue_free()
		
	if object is Spike:
		%TirePuncture.play()
		owner.movement_enabled = false
		owner.health = 0
		
	
	
		

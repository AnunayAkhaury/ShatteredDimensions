extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$background_sound.play()
	$DialogueBox.set_dialogue("PLAYER: WHAT A BEAUTIFUL DIAMOND! I MUST STEAL IT")
	var main = $Characters/MainCharacter
	var p1 = $Characters/Police1
	var p2 = $Characters/Police2
	await get_tree().create_timer(2).timeout
	main.move_left(4.5)
	await get_tree().create_timer(4.5).timeout
	$Diamond.visible = false
	$StolenDiamond.visible = true
	$DialogueBox.set_dialogue("PLAYER: HA I GOT IT! ITS MINE MAWHAHHAHHWAHH")
	$background_sound.volume_db = -6
	$alarm_sound.play()
	
	
	p1.move_left(3.2)
	p2.move_left(3.2)
	$DialogueBox.set_dialogue("PLAYER: NOT SO FAST BUDDY! HANDS UP!!")
	await get_tree().create_timer(3.2).timeout
	
	
	main.get_child(0).flip_h = false
	$StolenDiamond.visible = false
	$Diamond.visible = true
	
	p1.shoot_action(2.3)
	p2.shoot_action(2.3)
	main.shoot_action(2)
	$police_handsup.play()
	$DialogueBox.set_dialogue("PLAYER: OH NO I DONT HAVE ANY BULLETS LEFT GRRRRR")
	await get_tree().create_timer(2.3).timeout
	
	p1.move_left(2.0)
	p2.move_left(2.0)
	$DialogueBox.set_dialogue("POLICE: YOU BETTER NEVER STEAL ANYTHING IN YOUR LIFE AGAIN")
	await get_tree().create_timer(2).timeout
	
	
	p1.baton_action(4)
	main.get_child(0).play("crouch")
	$DialogueBox.set_dialogue("PLAYER: OW OW OW OW")
	
	
	p2.shoot_action(4)
	await get_tree().create_timer(4).timeout
	$DialogueBox.set_dialogue("POLICE: YOU ARE UNDER ARREST")
	main.get_child(0).play('idle')
	p1.move_back(.5)
	p2.move_back(.5)
	await get_tree().create_timer(1).timeout
	
	
	p1.shoot_action(3)
	p2.shoot_action(3)
	$cage_sound.play()
	$background_sound.volume_db = -9
	$PrisonBars.visible = true
	$PrisonBars.gravity_scale = 1
	await get_tree().create_timer(3).timeout
	$background_sound.volume_db = -20
	get_tree().change_scene_to_file("res://scenes/prison.tscn")
	
	
	
	

	
	
	
	
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

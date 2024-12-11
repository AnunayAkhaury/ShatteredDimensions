extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	
	var main = $Characters/MainCharacter
	var p1 = $Characters/Police1
	var p2 = $Characters/Police2
	await get_tree().create_timer(2).timeout
	main.move_left(4.5)
	await get_tree().create_timer(4.5).timeout
	$Diamond.visible = false
	$StolenDiamond.visible = true
	
	p1.move_left(3.2)
	p2.move_left(3.2)
	await get_tree().create_timer(3.2).timeout
	
	main.get_child(0).flip_h = false
	$StolenDiamond.visible = false
	$Diamond.visible = true
	
	p1.shoot_action(2.3)
	p2.shoot_action(2.3)
	main.shoot_action(2)
	await get_tree().create_timer(2.3).timeout
	
	p1.move_left(1.0)
	p2.move_left(1.0)
	
	await get_tree().create_timer(1).timeout
	
	p1.baton_action(4)
	main.get_child(0).play("crouch")
	
	
	p2.shoot_action(4)
	await get_tree().create_timer(4).timeout
	
	main.get_child(0).play('idle')
	p1.move_back(.5)
	p2.move_back(.5)
	await get_tree().create_timer(1).timeout
	
	
	p1.shoot_action(3)
	p2.shoot_action(3)
	
	$PrisonBars.visible = true
	$PrisonBars.gravity_scale = 1
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://scenes/prison.tscn")
	
	
	
	

	
	
	
	
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_podium_body_entered(body: Node2D) -> void:
	print("collision works")

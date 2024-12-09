class_name EnemyAttackCommand
extends Command

var is_executing: bool = false 

func execute(character: Character) -> Command.Status:
	if is_executing:
		return Command.Status.ACTIVE  
	is_executing = true
	
	character.velocity.x = 0  
	if not character.is_attacking:
		character.is_attacking = true
		character.animatedsprite.play("attack")
		if not character.has_node("AttackDelayTimer"):
			var attack_timer = Timer.new()
			attack_timer.name = "AttackDelayTimer"
			attack_timer.one_shot = true
			attack_timer.wait_time = 0.3  # Set delay time in seconds
			attack_timer.connect("timeout", _on_attack_timer_timeout.bind(character))
			character.add_child(attack_timer)
		character.get_node("AttackDelayTimer").start()
	if not character.animatedsprite.animation_finished.is_connected(_on_combo_finished):
		character.animatedsprite.animation_finished.connect(_on_combo_finished.bind(character), CONNECT_ONE_SHOT)
	
	return Command.Status.ACTIVE

func _on_attack_timer_timeout(character: Character) -> void:
	print("Enabling hitbox after delay")
	character.combo_hit_box.monitorable = true
	character.combo_hit_box.monitoring = true
	
func _on_combo_finished(character: Character):
	print("finished attacking")
	character.combo_hit_box.monitorable = false
	character.combo_hit_box.monitoring = false
	character.is_attacking = false  
	is_executing = false
	#character.animatedsprite.play("walk")

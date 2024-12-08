class_name ComboAttackCommand
extends Command

var is_executing: bool = false 

func execute(character: Character) -> Command.Status:
	if is_executing:
		return Command.Status.ACTIVE  
	is_executing = true
	
	character.velocity.x = 0  
	if not character.is_attacking:
		character.animatedsprite.play("combo")
		character.combo_hit_box.monitorable = true
		character.combo_hit_box.monitoring = true
	
	if not character.animatedsprite.animation_finished.is_connected(_on_combo_finished):
		character.animatedsprite.animation_finished.connect(_on_combo_finished.bind(character), CONNECT_ONE_SHOT)
	
	return Command.Status.ACTIVE

func _on_combo_finished(character: Character):
	character.combo_hit_box.monitorable = false
	character.combo_hit_box.monitoring = false
	character.is_attacking = false  
	is_executing = false
	character.animatedsprite.play("walk")

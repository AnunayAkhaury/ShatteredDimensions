class_name JumpCommand
extends Command
var input : int

func execute(character: Character) -> Status:
	if Global.run_gun:
		input = -445
	else:
		input = character.jump_velocity
	character.velocity.y = input
	
	if character._horizontal_input != 0:
		character.velocity.x = character._horizontal_input * character.movement_speed
		
	return Status.DONE

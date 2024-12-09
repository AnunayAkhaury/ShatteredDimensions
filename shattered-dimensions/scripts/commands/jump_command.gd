class_name JumpCommand
extends Command
var input : int

func execute(character: Character) -> Status:
	if Global.run_gun:
		input = -445
	else:
		input = character.jump_velocity
	character.velocity.y = input
		
	return Status.DONE

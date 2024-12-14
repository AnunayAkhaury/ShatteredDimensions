class_name JumpCommand
extends Command

var input : int
const run_gun_jump : int = -445 

func execute(character: Character) -> Status:
	if GlobalVars.run_gun:
		input = run_gun_jump
	else:
		input = character.jump_velocity
	character.velocity.y = input
		
	return Status.DONE

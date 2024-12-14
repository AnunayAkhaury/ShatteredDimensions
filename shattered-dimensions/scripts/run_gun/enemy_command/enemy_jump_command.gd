class_name EnemyJumpCommand
extends Command

const jump_input = -445

func execute(character: Character) -> Status:
	var input = jump_input
	character.velocity.y = input
	
	if character._horizontal_input != 0:
		character.velocity.x = character._horizontal_input * character.movement_speed
	return Status.DONE

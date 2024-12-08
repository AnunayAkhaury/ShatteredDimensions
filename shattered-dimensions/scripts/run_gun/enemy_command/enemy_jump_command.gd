class_name EnemyJumpCommand
extends Command

func execute(character: Character) -> Status:
	var input = -445
	character.velocity.y = input
	
	if character._horizontal_input != 0:
		character.velocity.x = character._horizontal_input * character.movement_speed
	return Status.DONE

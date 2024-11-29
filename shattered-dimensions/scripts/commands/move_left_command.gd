class_name MoveLeftCommand
extends Command


func execute(character: Character) -> Status:
	if character.sprite.animation != "run_gun": 
		var input = -1 * character.movement_speed
		character.sprite.play("run")
		character.velocity.x = input
		character.sprite.flip_h = true
		character.change_facing(Character.Facing.LEFT)
		return Status.DONE
	return Status.DONE

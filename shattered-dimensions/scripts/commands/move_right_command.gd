class_name MoveRightCommand
extends Command


func execute(character: Character) -> Status:
	if character.sprite.animation != "run_gun": 
		var input = character.movement_speed
		character.sprite.play("run")
		character.velocity.x = input
		character.sprite.flip_h = false
		character.change_facing(Character.Facing.RIGHT)
		return Status.DONE
	return Status.DONE

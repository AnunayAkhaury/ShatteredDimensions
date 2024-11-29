class_name EnemyMoveLeftCommand
extends Command


func execute(character: Character) -> Status:
	var input = -1 * character.movement_speed
	character.animatedsprite.play("walk")
	character.velocity.x = input
	character.animatedsprite.flip_h = true
	character.change_facing(Character.Facing.LEFT)
	return Status.DONE

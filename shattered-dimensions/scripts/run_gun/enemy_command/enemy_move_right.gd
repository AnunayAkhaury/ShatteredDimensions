class_name EnemyMoveRightCommand
extends Command


func execute(character: Character) -> Status:
	var input = character.movement_speed
	character.animatedsprite.play("walk")
	character.velocity.x = input
	character.animatedsprite.flip_h = false
	character.change_facing(Character.Facing.RIGHT)
	return Status.DONE

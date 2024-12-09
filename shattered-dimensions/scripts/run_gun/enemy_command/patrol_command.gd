class_name PatrolCommand
extends Command

const Tolerance = 30

func execute(character: Character) -> Status:
	if abs(character.position.x - character.current_point.x) > Tolerance:
		character.velocity.x = character.direction.x * character.SPEED 
	else:
		character.current_point_position += 1
		if character.current_point_position >= character.point_positions.size():
			character.current_point_position = 0
	character.current_point = character.point_positions[character.current_point_position]
	
	if character.current_point.x > character.position.x:
		var input = character.movement_speed
		character.animatedsprite.play("walk")
		character.velocity.x = input
		character.animatedsprite.flip_h = false
		character.change_facing(Character.Facing.RIGHT)
		return Status.DONE
	else:
		var input = -1 * character.movement_speed
		character.animatedsprite.play("walk")
		character.velocity.x = input
		character.animatedsprite.flip_h = true
		character.change_facing(Character.Facing.LEFT)
		return Status.DONE

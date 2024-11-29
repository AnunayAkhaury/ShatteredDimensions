class_name RunShootRightCommand
extends Command


func execute(character: Character) -> Status:
	var input = character.movement_speed
	character.sprite.play("run_gun")
	character.velocity.x = input
	character.sprite.flip_h = false
	character.change_facing(Character.Facing.RIGHT)

	character.update_muzzle_position()
	var bullet_instance = character.bullet.instantiate() as Node2D
	bullet_instance.global_position = character.muzzle.global_position
	bullet_instance.direction = 1 
	character.get_parent().add_child(bullet_instance)
	return Status.DONE

class_name RunShootLeftCommand
extends Command


func execute(character: Character) -> Status:
	#var input = -1 * character.movement_speed
	#character.sprite.play("run_gun")
	#character.velocity.x = character.movement_speed
	#character.sprite.flip_h = true
	#character.change_facing(Character.Facing.LEFT)
	character.update_muzzle_position()
	
	var bullet_instance = character.bullet.instantiate() as Node2D
	bullet_instance.global_position = character.muzzle.global_position
	bullet_instance.direction = -1
	character.get_parent().add_child(bullet_instance)
	
	return Status.DONE

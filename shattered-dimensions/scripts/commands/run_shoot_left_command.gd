class_name RunShootLeftCommand
extends Command


func execute(character: Character) -> Status:
	character.update_muzzle_position()
	
	var bullet_instance = character.bullet.instantiate() as Node2D
	bullet_instance.global_position = character.muzzle.global_position
	bullet_instance.direction = -1
	character.get_parent().add_child(bullet_instance)
	
	return Status.DONE

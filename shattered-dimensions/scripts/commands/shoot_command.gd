class_name ShootCommand
extends Command

@export var shoot_delay: float = 0.2

func execute(character: Character) -> Status:
	character.velocity.x = 0
	character.sprite.play("shoot")
	character.update_muzzle_position()
	var bullet_instance = character.bullet.instantiate() as Node2D
	bullet_instance.global_position = character.muzzle.global_position
	if character.facing == Character.Facing.RIGHT:
		bullet_instance.direction = 1 
	else:
		bullet_instance.direction = -1 
	character.get_parent().add_child(bullet_instance)
	return Status.DONE

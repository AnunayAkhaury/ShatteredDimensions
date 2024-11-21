class_name IdleCommand
extends Command

func execute(character: Character) -> Status:
	character.velocity.x = 0
	character.sprite.play("idle")
	return Status.DONE

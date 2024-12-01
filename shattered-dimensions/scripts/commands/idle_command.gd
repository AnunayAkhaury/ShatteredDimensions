class_name IdleCommand
extends Command

func execute(character: Character) -> Status:
		character.velocity.x = 0
		if character.sprite.animation != "shoot":
			character.sprite.play("idle")
		return Status.DONE

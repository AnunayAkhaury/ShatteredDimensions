class_name DurativeHitCommand
extends DurativeAnimationCommand

func execute(character:Character) -> Command.Status:
	return _manage_durative_animation_command(character, "hit")
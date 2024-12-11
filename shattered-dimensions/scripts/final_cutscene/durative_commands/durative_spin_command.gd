class_name DurativeSpinCommand
extends DurativeAnimationCommand

func execute(character:Character) -> Command.Status:
	return _manage_durative_animation_command(character, "spin")

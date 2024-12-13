class_name DurativeCheerCommand
extends DurativeAnimationCommand

var _duration:float

func _init(duration:float):
	_duration = duration
	
func execute(character:Character) -> Command.Status:
	return _manage_durative_animation_command(character, "cheer")

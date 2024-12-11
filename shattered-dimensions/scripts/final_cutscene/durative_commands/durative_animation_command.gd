class_name DurativeAnimationCommand
extends Command

var _timer:Timer

func execute(character:Character) -> Status:
	return Status.ERROR


func _manage_durative_animation_command(character: Character, animation: String, duration: float = 0.0) -> Status:
	if _timer == null:
		_timer = Timer.new()
		_timer.one_shot = true
		character.add_child(_timer)
		
		print(character.sprite_2d)
		character.sprite_2d.play(animation) 
		if !is_zero_approx(duration):
			_timer.start(duration)  
		else:
			var sprite_frames = character.sprite_2d.sprite_frames  
			var frame_count = sprite_frames.get_frame_count(animation)
			_timer.start(3.5)
		return Status.ACTIVE
		
	if !_timer.is_stopped():
		return Status.ACTIVE
	else:
		character.sprite_2d.play("idle")
		return Status.DONE
	return Status.DONE

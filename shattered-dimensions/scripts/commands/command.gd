class_name Command

var current_animation: String

enum Status {
	ACTIVE,
	DONE,
	ERROR,
}

func execute(_character: Character) -> Status:
	return Status.DONE
	
func set_animation(animation: String) -> void:
	current_animation = animation

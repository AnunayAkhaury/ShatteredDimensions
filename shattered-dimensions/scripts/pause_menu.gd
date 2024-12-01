extends Control

var paused = false

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		if paused:
			resume()
		else:
			pause()

func resume():
	Engine.time_scale = 1
	paused = false
	self.hide()

func pause():
	self.show()
	paused = true
	Engine.time_scale = 0

func _on_resume_pressed() -> void:
	resume()


func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/lobby.tscn")

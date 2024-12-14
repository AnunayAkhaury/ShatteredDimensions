extends Control
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
@onready var shooter_audio: AudioStreamPlayer2D = $ShooterAudio

func _ready() -> void:
	if GlobalVars.run_gun:
		shooter_audio.play()
	else:
		audio_stream_player.play(74)
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/prison.tscn")

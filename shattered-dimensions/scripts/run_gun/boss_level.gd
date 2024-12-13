extends Node2D
@onready var character_body = $Character
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var run_gun_death_audio: AudioStreamPlayer2D = $RunGunDeathAudio
var death : bool = false

func _ready():
	Global.run_gun = true
	character_body.collision_layer &= ~1  
	character_body.collision_layer |= 2  
	
func _physics_process(delta: float) -> void:
	if HealthManager.current_health == 0 and not death:
		death = true
		audio_stream_player_2d.stop()
		run_gun_death_audio.play()

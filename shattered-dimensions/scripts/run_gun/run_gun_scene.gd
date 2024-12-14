extends Node2D
@onready var character_body = $Character
@onready var run_gun_death_audio: AudioStreamPlayer2D = $RunGunDeathAudio
@onready var level_1_audio: AudioStreamPlayer2D = $Level1Audio
var death : bool = false

func _ready():
	GlobalVars.run_gun = true
	character_body.collision_layer &= ~1  
	character_body.collision_layer |= 2  
	
func _physics_process(delta: float) -> void:
	if HealthManager.current_health == 0 and not death:
		death = true
		level_1_audio.stop()
		run_gun_death_audio.play()

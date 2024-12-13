extends AnimatedSprite2D
@onready var enemy_death_effect_audio: AudioStreamPlayer2D = $EnemyDeathEffectAudio

func _ready() -> void:
	enemy_death_effect_audio.play()
	
func _on_timer_timeout() -> void:
	queue_free()

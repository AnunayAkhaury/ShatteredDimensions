extends Node2D

@export var pickup_amount : int = 1
@onready var item_pick_up_audio: AudioStreamPlayer2D = $ItemPickUpAudio

func _on_health_pickup_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		item_pick_up_audio.play()
		HealthManager.increase_health(pickup_amount)
		queue_free()

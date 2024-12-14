extends Node2D

func _on_timer_timeout() -> void:
	if GlobalVars.run_gun:
		get_tree().reload_current_scene()
		HealthManager.reset_health()
	queue_free()

func timeout():
	queue_free()

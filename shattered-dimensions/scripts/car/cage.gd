class_name Cage
extends Area2D

var health: int

func _init() -> void:
	health = 100
	area_entered.connect(_on_area_entered)
	
func _on_area_entered(missile: Missile) -> void:
	health -= 10
	if health <= 0:
		var explosion = get_child(2)
		explosion.visible = true
		explosion.play("default")
		
		get_child(0).visible = false
		
		%Car.movement_enabled = true
	
	missile.queue_free()


func _on_explosion_animation_finished() -> void:
	queue_free() # Replace with function body.

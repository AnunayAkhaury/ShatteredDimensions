class_name TirePile
extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_body_entered(body: Node2D) -> void:
	if body is Player and GlobalVars.car_level_stat != "Battle":
		%BattleBoundary.queue_free()
		body.queue_free()
		%Traps.visible = false
		%Car/Player.visible = true
		%Car.input_enabled = true
		queue_free()
	return # Replace with function body.

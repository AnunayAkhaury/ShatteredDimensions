class_name TirePile
extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_body_entered(body: Node2D) -> void:
	print("detected")
	if body is Player and GlobalVars.carCompleted == "Battle Over":
		body.queue_free()
		visible = false
		%Car/Player.visible = true
		%Car.input_enabled = true
		queue_free()
	return # Replace with function body.

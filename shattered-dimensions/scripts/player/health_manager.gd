extends Node

var max_health : int = 5
var current_health : int

signal on_health_changed
signal on_health_increased 

func _ready() -> void:
	current_health = max_health
	on_health_changed.emit(current_health)

func decrease_health(health : int):
	current_health -= health
	
	if current_health < 0:
		current_health = 0
	on_health_changed.emit(current_health)
	
func increase_health(health : int):
	current_health += health
	
	if current_health > max_health:
		current_health = max_health
	on_health_changed.emit(current_health)
	on_health_increased.emit()

func reset_health() -> void:
	current_health = max_health
	on_health_changed.emit(current_health)

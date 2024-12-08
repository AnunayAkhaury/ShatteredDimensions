extends Node

var max_health : int = 100
var current_health : int

signal on_health_changed

func _ready() -> void:
	current_health = max_health
	on_health_changed.emit(current_health)

func decrease_health(health : int):
	current_health -= health
	
	if current_health < 0:
		current_health = 0
	print('decrease health')
	on_health_changed.emit(current_health)
	
func increase_health(health : int):
	current_health += health
	
	if current_health > max_health:
		current_health = max_health
	print('increse health')
	on_health_changed.emit(current_health)

func reset_health() -> void:
	current_health = max_health
	on_health_changed.emit(current_health)

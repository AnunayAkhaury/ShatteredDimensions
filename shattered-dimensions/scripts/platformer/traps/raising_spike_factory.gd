extends Node2D

@export var speed: float = 1.1
@export var forwards: bool = true

var raising_spike = ResourceLoader.load("res://scenes/platformer/traps/raising_spike.tscn")

func _ready() -> void:
	spawn()
	

func spawn():
	while true:
		var obj = raising_spike.instantiate()
		obj.initialize(forwards)
		add_child(obj)
		await get_tree().create_timer(speed).timeout

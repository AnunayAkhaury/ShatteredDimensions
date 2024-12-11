class_name CrashBox
extends Area2D

@onready var _caught_label = preload("res://scenes/car/labels/caught_by_police.tscn")

func _init() -> void:
	body_entered.connect(_on_body_entered)
	
func _on_body_entered(van: SwatVan) -> void:
	if !van._defeated_by_player and owner.has_method("take_damage"):
		owner.take_damage(100)
		if van.health > 0:
			van.take_damage(100)
			owner._caught_by_police = true

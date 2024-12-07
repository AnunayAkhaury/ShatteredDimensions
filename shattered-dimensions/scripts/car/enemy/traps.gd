class_name Traps
extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$LongSpike.play("default")
	$LongSpike2.play("default")
	$ShortSpike.play("default")
	$ShortSpike2.play("default")
	

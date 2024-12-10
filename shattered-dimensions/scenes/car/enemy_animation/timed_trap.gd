class_name Traps_Two
extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Spike.play("default")
	$AnimationPlayer.play("long_spike_collision")
	$Spike2.play("default")
	$AnimationPlayer2.play("long_spike_collision")
	$Spike3.play("default")
	$AnimationPlayer3.play("short_spike")
	$Spike4.play("default")
	$AnimationPlayer4.play("short_spike")

class_name CageV2
extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var cage = get_child(0)
	if cage is Cage:
		if cage.blasted == true: 
			get_child(1).disabled = true

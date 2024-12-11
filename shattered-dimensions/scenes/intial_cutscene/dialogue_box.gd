extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_dialogue(text: String):
	%Text.bbcode_text = text

func clear_dialogue():
	%Text.bbcode_text = ""
	

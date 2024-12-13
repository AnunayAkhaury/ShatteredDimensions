extends CanvasLayer

signal choice_made(result: String)

@onready var yes: Button = $Control/Yes
@onready var no: Button = $Control/No


func _ready():
	pass

func _on_yes_pressed():
	emit_signal("choice_made", "yes") 
	self.visible = false               

func _on_no_pressed():
	emit_signal("choice_made", "no")   
	self.visible = false               

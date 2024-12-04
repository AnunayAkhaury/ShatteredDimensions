extends Camera2D

var box_width:float = 150
var box_height:float = 10.0

@onready var player: Player = %Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var tpos = player.global_position
	var cpos = global_position
	
	var left = (tpos.x - 2) - (cpos.x - box_width)
	if left < 0 and global_position.x > 340:
		global_position.x += left
	
	var right = (tpos.x + 2) - (cpos.x - 70)
	if right > 0:
		global_position.x += right

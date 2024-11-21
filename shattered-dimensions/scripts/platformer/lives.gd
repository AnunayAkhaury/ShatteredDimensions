extends Label

@onready var player: Player = %Player

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = "Lives: " + str(player.lives)

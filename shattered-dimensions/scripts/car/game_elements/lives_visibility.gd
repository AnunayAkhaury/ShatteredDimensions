extends Node2D

var prev_lives: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	prev_lives = 5
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var lives = GlobalVars.car_lives
	for life in lives:
		get_child(life).visible = true
	#if lives < prev_lives:
		#get_child(lives).visible = false
		#prev_lives = lives
	#elif lives > prev_lives:
		#get_child(prev_lives).visible = true

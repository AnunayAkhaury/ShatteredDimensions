extends Control

var _DELAY: float = 1.5
var _timer: Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%CageSound.play()
	_timer = Timer.new()
	_timer.autostart = true
	_timer.wait_time = _DELAY
	_timer.timeout.connect(restart_level)
	add_child(_timer)


## Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func restart_level() -> void:
	get_tree().change_scene_to_file("res://scenes/car/car_level.tscn")

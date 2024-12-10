extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $CarPlayer:
		$CarPlayer/PlayerBar.value =  %CarPlayer.carlevel_health
	
	"""
	if GlobalVars.car_level_stat == "Police Won":
		
		$CarPlayer.visible = false
		GlobalVars.car_level_stat == "Not on car level"
	if GlobalVars.car_level_stat == "Player Won":
		$Car.global_position = $CarPostBattle.position
		$Car/Player.visible = true
		$Car.input_enabled = true
		GlobalVars.car_level_stat == "Not on Car level"
	"""
		
		

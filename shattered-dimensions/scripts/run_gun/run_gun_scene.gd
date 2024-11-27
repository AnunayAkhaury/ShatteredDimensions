extends Node2D

func _ready():
	var player = $Character
	player.set_level_specific_animations("run_gun")
	print(player.run_gun_run_animation)
	print("SCENE LOADED")

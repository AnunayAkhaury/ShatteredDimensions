extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GlobalVars.car_level_stat == "Battle":
		%BattleInstruction.visible = false
		$CarPlayer/PlayerBar.value =  %CarPlayer.carlevel_health
	
		
		

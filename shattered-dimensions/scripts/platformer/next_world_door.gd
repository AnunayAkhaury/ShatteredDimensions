extends Node2D

@onready var player: Player = %Player
@onready var animation_player: AnimationPlayer = $CanvasLayer/AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	animation_player.play("fade")

func _ready() -> void:
	animation_player.play("fade_in")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("skip_level_platformer_cheat"):
		if player.platformer_level == 1:
			get_tree().change_scene_to_file("res://scenes/platformer/level2/platformer_level_2.tscn")
		elif player.platformer_level == 2:
			GlobalVars.platformerCompleted = true
			get_tree().change_scene_to_file("res://scenes/platformer/victory.tscn")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade":
		if player.platformer_level == 1:
			get_tree().change_scene_to_file("res://scenes/platformer/level2/platformer_level_2.tscn")
		elif player.platformer_level == 2:
			GlobalVars.platformerCompleted = true
			get_tree().change_scene_to_file("res://scenes/platformer/victory.tscn")

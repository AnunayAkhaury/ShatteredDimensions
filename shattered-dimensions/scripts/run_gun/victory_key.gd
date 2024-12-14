extends Node2D

@export var player_node_path: NodePath

@onready var timer: Timer = $Timer
@onready var key_audio: AudioStreamPlayer2D = $KeyAudio


var player: Node
func _ready() -> void:
	player = get_node_or_null(player_node_path)


func _on_item_pick_up_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and player and is_visible():
		key_audio.play()
		GlobalVars.shooterCompleted = true
		timer.start()
		hide()  
		set_process(false)  

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/platformer/victory.tscn")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
	queue_free()


func _on_item_pick_up_area_entered(area: Area2D) -> void:
	if area.is_in_group("player") and player and is_visible():
		key_audio.play()
		GlobalVars.shooterCompleted = true
		timer.start()
		hide()  
		set_process(false)  

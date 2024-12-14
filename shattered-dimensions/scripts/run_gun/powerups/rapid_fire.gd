extends Node2D

@export var player_node_path: NodePath

@onready var timer: Timer = $Timer
@onready var item_pick_up_audio: AudioStreamPlayer2D = $ItemPickUpAudio

var player: Node
var current_cooldown: float  

func _ready() -> void:
	player = get_node_or_null(player_node_path)
	if player:
		current_cooldown = player.shoot_cooldown  

func _on_item_pick_up_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and player and is_visible():
		item_pick_up_audio.play()
		current_cooldown = player.shoot_cooldown
		player.shoot_cooldown = 0.0  
		timer.start()
		hide()  
		set_process(false)  

func _on_timer_timeout() -> void:
	if player:
		player.shoot_cooldown = current_cooldown  
	queue_free()

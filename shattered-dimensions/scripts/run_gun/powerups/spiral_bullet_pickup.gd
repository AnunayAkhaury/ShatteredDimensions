extends Node2D

@export var player_node_path: NodePath
@onready var timer: Timer = $Timer

var player: Node
var prev_bullet: PackedScene  
var sprial_bullet : PackedScene = preload('res://scenes/run_gun/powerups/spiral_bullet_powerup/spiral_bullet.tscn')
func _ready() -> void:
	player = get_node_or_null(player_node_path)
	if player:
		prev_bullet = player.bullet  

func _on_item_pick_up_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and player and is_visible():
		player.set_bullet_type(sprial_bullet) 
		timer.start()
		hide()  
		set_process(false)  

func _on_timer_timeout() -> void:
	if player:
		player.set_bullet_type(prev_bullet) 
	queue_free()

extends Area2D

@export var boss_camera: Camera2D
@export var player_camera: Camera2D
@export var boss_node_path: NodePath
@export var player_node_path: NodePath
var player : CharacterBody2D
var boss : CharacterBody2D
var has_entered : bool = false
func _ready() -> void:
	player = get_node(player_node_path)
	boss = get_node(boss_node_path)
	
func _on_area_entered(area: Area2D) -> void:
	if not has_entered:
		player.unbind_player_input_commands()
		player.velocity.x = 0
		player.velocity.y = 0
		zoom_camera_onto_boss()
		has_entered = true


func _on_body_entered(body: Node2D) -> void:
	if not has_entered:
		player.unbind_player_input_commands()
		zoom_camera_onto_boss()
		has_entered = true

func zoom_camera_onto_boss() -> void:
	var tween = create_tween()
	boss_camera.make_current()
	tween.tween_property(boss_camera, "zoom", Vector2(5.0, 5.0), 2.0)    
	tween.tween_property(boss_camera, "global_position", player.global_position, 2.0)
	tween.tween_property(boss_camera, "zoom", Vector2(1.0, 1.0), 2.0)
	tween.tween_callback(_start_boss_fight)

func _start_boss_fight() -> void:
	player_camera.make_current()
	await get_tree().create_timer(0.5).timeout 
	boss.start_fight() 
	

class_name NewWeapons
extends Node2D

@onready var firing: Node2D = $Firing
#@onready var spaceship: Spaceship = $".."
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var weapons: AnimatedSprite2D = $Weapons

var spaceship

var startFire:bool = false
var speed = 300
var fired:int = 0

'func _init(_spaceship):
	spaceship = _spaceship'
	
func _ready() -> void:
	print("yas")
	

func _process(delta: float) -> void:
	print("process of the new fire")
	if startFire:
		for arrow in firing.get_children():
			arrow.visible = true
		animation_player.play("release")
	for arrow in firing.get_children():
		if arrow.visible:
			print("visible")
			arrow.position.x += speed * delta

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "release":
		startFire = false
		for arrow in firing.get_children():
			arrow.visible = false

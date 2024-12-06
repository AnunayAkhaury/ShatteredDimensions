class_name NewWeapons
extends Node2D

@onready var firing: Node2D = $Firing
#@onready var spaceship: Spaceship = $Spaceship
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var weapons: AnimatedSprite2D = $Weapons
@onready var ship_level: Node2D = $"."
@onready var camera_2d: Camera2D = %Camera2D
@onready var arrow_1: Area2D = $Firing/Arrow1

var startFire:bool = false
var speed = 300
var fired:int = 0
var soundPlayed = false
	
func _process(delta: float) -> void:
	#print("process of the new fire")
	if startFire:
		for arrow in firing.get_children():
			arrow.visible = true
		animation_player.play("release")
		#print(weapons.position)
		#weapons.position = spaceship.position
	for arrow in firing.get_children():
		if arrow.visible:
			#print("visible")
			arrow.position.x += speed * delta
	
	

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "release":
		startFire = false
		for arrow in firing.get_children():
			#arrow.visible = false
			arrow.queue_free()
			arrow = null

func _on_arrow_1_body_entered(body: Enemy) -> void:
	body.health -= 15
	queue_free()
	#$Firing.get_node("Arrow1") = null


func _on_arrow_2_body_entered(body: Enemy) -> void:
	body.health -= 15
	queue_free()


func _on_arrow_3_body_entered(body: Enemy) -> void:
	body.health -= 15
	queue_free()


func _on_arrow_4_body_entered(body: Enemy) -> void:
	body.health -= 15
	queue_free()


func _on_arrow_5_body_entered(body: Enemy) -> void:
	body.health -= 15
	queue_free()


func _on_arrow_6_body_entered(body: Enemy) -> void:
	body.health -= 15
	queue_free()

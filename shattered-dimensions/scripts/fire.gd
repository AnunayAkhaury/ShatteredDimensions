class_name Arrows
extends Node2D

@onready var firing: Node2D = $Firing
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var startFire:bool = false
var speed = 300
var soundPlayed = false


func _process(delta: float) -> void:
	
	# start the process of firing arrows
	if startFire:
		for arrow in firing.get_children():
			arrow.visible = true
		animation_player.play("release")
		
	# move the arrows across the screen
	for arrow in firing.get_children():
		if arrow.visible:
			arrow.position.x += speed * delta

# after arrows have reached their max distance
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	
	# reset variables and remove arrow from tree
	if anim_name == "release":
		startFire = false
		for arrow in firing.get_children():
			arrow.queue_free()
			arrow = null


# handle each collision of an arrow with a UFO
func _on_arrow_1_body_entered(body: Enemy) -> void:
	body.healthLevel -= 15
	queue_free()


func _on_arrow_2_body_entered(body: Enemy) -> void:
	body.healthLevel -= 15
	queue_free()


func _on_arrow_3_body_entered(body: Enemy) -> void:
	body.healthLevel -= 15
	queue_free()


func _on_arrow_4_body_entered(body: Enemy) -> void:
	body.healthLevel -= 15
	queue_free()


func _on_arrow_5_body_entered(body: Enemy) -> void:
	body.healthLevel -= 15
	queue_free()


func _on_arrow_6_body_entered(body: Enemy) -> void:
	body.healthLevel -= 15
	queue_free()

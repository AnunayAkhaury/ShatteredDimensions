class_name Arrows
extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var weaponsBase = get_node("Weapons").position
@onready var arrowBases = [Vector2(23,-41),Vector2(36,-28),Vector2(51.5,-18),Vector2(53,20),Vector2(38,32),Vector2(22,44)]


var startFire:bool = false
var speed = 300
var soundPlayed = [false,false,false,false,false,false]
var visibleWeapons = false


func _process(delta: float) -> void:
	
	# start the process of firing arrows
	if startFire:
		animation_player.play("release")
	
	# move the arrows across the screen
	var count = -1
	for arrow in get_node("Arrows").get_children():
		count += 1
		
		if arrow.visible:
			arrow.position.x += speed * delta
			
			if soundPlayed[count] == false:
				$Sound.play()
				soundPlayed[count] = true


# after arrows have reached their max distance
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	
	# reset variables and remove arrow from tree
	if anim_name == "release":
		startFire = false
		get_parent().get_node("Spaceship").allowFire = true
		queue_free()

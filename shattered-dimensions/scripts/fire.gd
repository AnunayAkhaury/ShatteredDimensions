class_name Arrows
extends Node2D

@onready var firing: Node2D = $Firing
@onready var animation_player: AnimationPlayer = $AnimationPlayer

var startFire:bool = false
var speed = 300
var soundPlayed = [false,false,false,false,false,false]
var visibleWeapons = false


func _process(delta: float) -> void:
	
	# start the process of firing arrows
	if startFire:
		for arrow in firing.get_children():
			arrow.visible = true
		animation_player.play("release")
	
	
	# move the arrows across the screen
	var count = -1
	for arrow in firing.get_children():
		count += 1
		if arrow.get_node("Fire").visible:
			arrow.position.x += speed * delta
			if soundPlayed[count] == false:
				$Sound.play()
				soundPlayed[count] = true
			
	

# after arrows have reached their max distance
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	
	# reset variables and remove arrow from tree
	if anim_name == "release":
		startFire = false
		#for arrow in firing.get_children():
		#	arrow.queue_free()
		#	arrow = null
		get_parent().get_node("Spaceship").allowFire = true
		queue_free()


# handle each collision of an arrow with a UFO
func _on_arrow_1_body_entered(body: Enemy) -> void:
	body.healthLevel -= 25
	var node = get_node("Firing/Arrow1")
	node.queue_free()


func _on_arrow_2_body_entered(body: Enemy) -> void:
	body.healthLevel -= 25
	var node = get_node("Firing/Arrow2")
	node.queue_free()


func _on_arrow_3_body_entered(body: Enemy) -> void:
	body.healthLevel -= 25
	var node = get_node("Firing/Arrow3")
	node.queue_free()


func _on_arrow_4_body_entered(body: Enemy) -> void:
	body.healthLevel -= 25
	var node = get_node("Firing/Arrow4")
	node.queue_free()


func _on_arrow_5_body_entered(body: Enemy) -> void:
	body.healthLevel -= 25
	var node = get_node("Firing/Arrow5")
	node.queue_free()


func _on_arrow_6_body_entered(body: Enemy) -> void:
	body.healthLevel -= 25
	var node = get_node("Firing/Arrow6")
	node.queue_free()

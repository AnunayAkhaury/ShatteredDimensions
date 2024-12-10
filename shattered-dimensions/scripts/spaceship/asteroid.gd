class_name Asteroid
extends RigidBody2D

@onready var spaceship: Spaceship = $"../../Spaceship"

# play animation upon scene startup
func _ready() -> void:
	get_node("AnimationPlayer").play("rotate")


# spaceship collides with asteroid
func _on_body_entered(body) -> void:
	
	# asteroid bounces off and explodes
	# spaceship health decreases
	if body == spaceship:
		spaceship.healthLevel -= 15
		spaceship.bounce = true
	
	$AnimationPlayer.play("explode")
	get_node("Sound").play()
	

# after asteroid explosion
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	
	# remove asteroid from tree
	if anim_name=="explode":
		queue_free()
		spaceship.bounce = false
		spaceship.binded = true

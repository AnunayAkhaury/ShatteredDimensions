extends RigidBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var spaceship: Spaceship = $"../../Spaceship"


# spaceship collides with asteroid
func _on_body_entered(body) -> void:
	
	# asteroid bounces off and explodes
	# spaceship health decreases
	if body == spaceship:
		spaceship.healthLevel -= 15
		spaceship.bounce = true
	
	animation_player.play("explode")
	$Sound.play()
	

# after asteroid explosion
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	
	# remove asteroid from tree
	if anim_name=="explode":
		queue_free()
		spaceship.bounce = false
		spaceship.binded = true

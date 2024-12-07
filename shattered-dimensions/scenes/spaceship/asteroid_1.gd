extends RigidBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var spaceship: Spaceship = $"../../Spaceship"
@onready var sounds: Node2D = $"../../Sounds"


func _on_body_entered(body) -> void:
	print("collision with asteroid 1")
	if body == spaceship:
		spaceship.health -= 10
		spaceship.bounce = true
	animation_player.play("explode")
	$Explosion.play()
	


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name=="explode":
		queue_free()
		spaceship.bounce = false
		spaceship.binded = true

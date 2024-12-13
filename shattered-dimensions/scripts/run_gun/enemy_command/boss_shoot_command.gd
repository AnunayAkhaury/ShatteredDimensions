class_name BossShootCommand
extends Command

var is_executing: bool = false

func execute(character: Character) -> Status:
	if is_executing:
		return Status.ACTIVE
	character.animatedsprite.play("shoot")
	character.update_muzzle_position()
	if not character.animatedsprite.animation_finished.is_connected(_on_shoot_animation_finished):
		character.animatedsprite.animation_finished.connect(_on_shoot_animation_finished.bind(character), CONNECT_ONE_SHOT)
	return Status.DONE

func _on_shoot_animation_finished(character: Character) -> void:
	character.combo_hit_box.monitorable = false
	character.combo_hit_box.monitoring = false
	var bullet_instance = character.bullet.instantiate() as Node2D
	bullet_instance.global_position = character.muzzle.global_position
	if character.facing == Character.Facing.RIGHT:
		bullet_instance.direction = -1
	else:
		bullet_instance.direction = 1

	character.get_parent().add_child(bullet_instance)

	is_executing = false
	character.animatedsprite.play('walk')

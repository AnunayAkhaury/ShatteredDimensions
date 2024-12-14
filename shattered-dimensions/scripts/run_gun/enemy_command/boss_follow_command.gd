class_name BossFollowCommand
extends Command

var player: Player  

func _init(player: Player):
	self.player = player
	
func get_horizontal_distance_to_player(character: Character, player: Player) -> float:
	var follower_x = character.global_position.x
	var player_x = player.global_position.x

	var horizontal_distance = abs(follower_x - player_x)
	return horizontal_distance


func execute(character: Character) -> Status:
	if not is_instance_valid(player) or not is_instance_valid(character):
		return Status.DONE
		
	var distance_to_player = character.global_position.distance_to(player.global_position)
	if distance_to_player > character.leash_distance:
		character.velocity = Vector2.ZERO
		return Status.DONE
	var direction_to_player = (player.global_position - character.global_position).normalized()
	character.velocity.x = direction_to_player.x * character.movement_speed
		
	if direction_to_player.x < 0:
		character.animatedsprite.flip_h = true
		character.change_facing(Character.Facing.RIGHT)
	else:
		character.animatedsprite.flip_h = false
		character.change_facing(Character.Facing.LEFT)
	
	
	character.update_combo_hitbox()
	return Status.ACTIVE
		

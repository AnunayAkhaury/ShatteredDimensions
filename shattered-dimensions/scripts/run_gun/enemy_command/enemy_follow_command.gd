class_name EnemyFollowCommand
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
	var distance_to_player = character.global_position.distance_to(player.global_position)
	if distance_to_player > character.leash_distance:
		character.velocity = Vector2.ZERO
		return Status.DONE
	var direction_to_player = (player.global_position - character.global_position).normalized()
	character.velocity = direction_to_player * 50
	
	if direction_to_player.x < 0:
		character.animatedsprite.flip_h = false
		character.change_facing(Character.Facing.LEFT)
	else:
		character.animatedsprite.flip_h = true
		character.change_facing(Character.Facing.RIGHT)

	return Status.ACTIVE
		

class_name BossSummonCommand
extends Command

var sentinel_scene = preload("res://scenes/run_gun/enemies/sentinal.tscn")  
var scout_scene = preload("res://scenes/run_gun/enemies/scout/scout.tscn")  

func execute(character: Node2D):
	var enemy_scene = choose_random_enemy()
	var spawn_points = get_spawn_points(enemy_scene, character)
	if spawn_points.size() == 0:
		print("No valid spawn points found!")
		return
	var spawn_point = spawn_points[randi() % spawn_points.size()]
	var enemy = summon_enemy(enemy_scene, spawn_point, character)
	character.summoned_enemies.append(enemy)

func choose_random_enemy():
	var enemy_pool = [sentinel_scene, scout_scene]
	return enemy_pool[randi() % enemy_pool.size()]
	
func get_spawn_points(enemy_scene: PackedScene, character: MechanicBoss) -> Array:
	if enemy_scene == scout_scene:
		return character.ScoutSummonPoints.get_children()
	elif enemy_scene == sentinel_scene:
		return character.SentinalSummonPoints.get_children()
	return []

func summon_enemy(enemy_scene: PackedScene, spawn_point: Marker2D, character: MechanicBoss):
	var instance = enemy_scene.instantiate()
	instance.global_position = spawn_point.global_position  # Set spawn position
	if character.SentinalSummonPoints != null:
		instance.patrol_points = character.patrol_points
	else:
		instance.follow_distance = 1100
	instance.player_node_path = character.player_node_path
	
	character.get_parent().add_child(instance)
	return instance

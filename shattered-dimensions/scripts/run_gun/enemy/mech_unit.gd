class_name MechUnit
extends BaseEnemy

func _physics_process(delta: float) -> void:
	apply_gravity(delta)
	move_and_slide()
	if patrol_points:
		patrol.execute(self)

func _on_hurtbox_area_entered(area: Area2D) -> void:
	print("Collision with:", area.name, "on MechUnit:", self.name)
	if damage_cooldown or area.is_in_group("enemy"):
		return
	if area == self.get_node("HitBox"):  
		print("Ignored self-collision with:", area.name)
		return
	if area.get_parent().has_method("get_damage_amount"):
		print("Hit flash triggered for:", self.name)
		hitflashplayer.play("hit_flash")
		var node = area.get_parent() as Node
		health -= node.damage_amount
		print(health)
		if health <= 0:
			var enemy_death_effect_instance = enemy_death_effect.instantiate() as Node2D
			enemy_death_effect_instance.global_position = global_position
			get_parent().add_child(enemy_death_effect_instance)
			queue_free()
		#else:
			#$AttackTimer.start()
			#damage_cooldown = true
#
#func _on_attack_timer_timeout() -> void:
	#damage_cooldown = false

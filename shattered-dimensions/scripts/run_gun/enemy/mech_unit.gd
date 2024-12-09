class_name MechUnit
extends BaseEnemy


func _ready() -> void:
	super._ready()

	
func _physics_process(delta: float) -> void:
	apply_gravity(delta)
	move_and_slide()
	if patrol_points:
		patrol.execute(self)


		#else:
			#$AttackTimer.start()
			#damage_cooldown = true
#
#func _on_attack_timer_timeout() -> void:
	#damage_cooldown = false

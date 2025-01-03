class_name MechUnit
extends BaseEnemy


func _ready() -> void:
	super._ready()

	
func _physics_process(delta: float) -> void:
	apply_gravity(delta)
	move_and_slide()
	if patrol_points:
		patrol.execute(self)

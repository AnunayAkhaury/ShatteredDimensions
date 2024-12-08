extends BaseEnemy
class_name Sentinal

@onready var combo_hit_box: Area2D = $ComboHitBox
var is_attacking : bool = false
@export var attack_distance: float = 50  # Range to trigger an attack
var combo_hitbox_pos : Vector2
var sentinal_patrol_command : SentinalPatrolCommand

func _ready() -> void:
	super._ready()
	update_material()
	sentinal_patrol_command = SentinalPatrolCommand.new()
	await get_tree().process_frame
	combo_hitbox_pos = combo_hit_box.position   
	combo_hit_box.monitorable = false
	combo_hit_box.monitoring = false

func _physics_process(delta: float) -> void:
	move_and_slide()
	apply_gravity(delta)
	update_combo_hitbox()
	if patrol_points and not is_attacking:
		sentinal_patrol_command.execute(self)
	if player != null and not is_attacking: 
		var distance_to_player = (player.global_position - global_position).length()
		if distance_to_player <= attack_distance and not is_attacking:
			var status = attack_command.execute(self)
			if status == Command.Status.ACTIVE:
				return 

func update_combo_hitbox() -> void:
	if facing == Character.Facing.RIGHT:
		combo_hit_box.scale.x = 1  
		combo_hit_box.position.x = combo_hitbox_pos.x
	else:
		combo_hit_box.scale.x = -1  
		combo_hit_box.position.x = combo_hitbox_pos.x

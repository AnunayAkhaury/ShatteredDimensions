class_name police_cutscene
extends Character


@export var speed: float = 400
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimatedSprite2D.flip_h = true
	%PoliceHealth.visible = false
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func move_left(duration: float) -> void:
	
	$AnimatedSprite2D.play("run")

	var end_time = Time.get_ticks_msec() + int(duration * 1000)

	while Time.get_ticks_msec() < end_time:
		position.x -= speed * get_process_delta_time()
		await get_tree().process_frame

	$AnimatedSprite2D.play("idle")

func shoot_action(duration: float) -> void:
	# Start playing shoot animation
	$AnimatedSprite2D.play("attack")

	# Calculate end time
	var end_time = Time.get_ticks_msec() + int(duration * 1000)

	while Time.get_ticks_msec() < end_time:
		await get_tree().process_frame

	$AnimatedSprite2D.play("idle")
	
	
func baton_action(duration: float) -> void:
	# Start playing shoot animation
	$AnimatedSprite2D.play("attack_batton")

	# Calculate end time
	var end_time = Time.get_ticks_msec() + int(duration * 1000)

	while Time.get_ticks_msec() < end_time:
		await get_tree().process_frame

	$AnimatedSprite2D.play("idle")

func move_back(duration: float):
	$AnimatedSprite2D.play("run")

	var end_time = Time.get_ticks_msec() + int(duration * 1000)

	while Time.get_ticks_msec() < end_time:
		position.x += speed * get_process_delta_time()
		await get_tree().process_frame

	$AnimatedSprite2D.play("idle")

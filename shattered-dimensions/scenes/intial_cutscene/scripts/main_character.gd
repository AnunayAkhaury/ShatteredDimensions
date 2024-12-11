class_name MainCharacter
extends Character

# Movement speed
@export var speed: float = 200.0

# Called when the node enters the scene tree for the first time
func _ready() -> void:
	$Sprite2D.flip_h = true
	

# Durative move function
func move_left(duration: float) -> void:
	
	$Sprite2D.play("run")

	var end_time = Time.get_ticks_msec() + int(duration * 1000)

	while Time.get_ticks_msec() < end_time:
		position.x -= speed * get_process_delta_time()
		await get_tree().process_frame

	$Sprite2D.play("idle")
	
func shoot_action(duration: float) -> void:
# Start playing shoot animation
	$Sprite2D.play("shoot")

# Calculate end time
	var end_time = Time.get_ticks_msec() + int(duration * 1000)

	while Time.get_ticks_msec() < end_time:
		position.x += 50 * get_process_delta_time()
		await get_tree().process_frame

	$Sprite2D.play("idle")

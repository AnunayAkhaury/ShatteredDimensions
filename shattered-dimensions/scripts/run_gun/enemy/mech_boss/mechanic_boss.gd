extends BaseEnemy
class_name MechanicBoss

@export var leash_distance: float = 800  # Distance to start following
@export var shoot_distance: float = 500  # Distance to stop and shoot
@export var shoot_interval: float = 2.0  # Shooting interval in seconds
@export var attack_distance: float = 100  # Distance to trigger physical attack combo
@onready var attack_timer: Timer = $AttackTimer
@onready var muzzle: Marker2D = $Muzzle

var muzzle_position: Vector2
var boss_follow_command: BossFollowCommand
var is_following: bool = false
var is_attacking: bool = false

func _ready() -> void:
	super._ready()
	boss_follow_command = BossFollowCommand.new(player)
	bullet = preload('res://scenes/run_gun/enemies/mechanic/mechanic_bullet.tscn')
	set_bullet_type(bullet)
	muzzle_position = muzzle.position

func _physics_process(delta: float) -> void:
	apply_gravity(delta)
	move_and_slide()
	
	if player != null:
		var distance_to_player = (player.global_position - global_position).length()
		
		if distance_to_player <= leash_distance and not is_following:
			is_following = true
			current_state = STATE.FOLLOW
			
		elif distance_to_player > leash_distance and is_following:
			is_following = false
			velocity.x = 0  
			attack_timer.stop()
			current_state = STATE.IDLE
			
		if is_following and distance_to_player > shoot_distance:
			boss_follow_command.execute(self)
			current_state = STATE.FOLLOW
			
		elif is_following and shoot_distance >= distance_to_player > attack_distance:
			if attack_timer.is_stopped():
				attack_timer.start(shoot_interval)
				current_state = STATE.SHOOT
				
		elif distance_to_player <= attack_distance and not is_attacking:
			current_state = STATE.COMBO
			perform_combo_attack()
	else:
		attack_timer.start()
		current_state = STATE.IDLE
							 
	update_animation()

func perform_combo_attack() -> void:
	is_attacking = true
	animatedsprite.play("combo")
	await animatedsprite.animation_finished
	is_attacking = false
	current_state = STATE.FOLLOW

func update_animation() -> void:
	if current_state == STATE.IDLE:
		animatedsprite.play('idle')
	elif current_state == STATE.FOLLOW and animatedsprite.animation != 'shoot':
		animatedsprite.play('walk')
	elif current_state == STATE.SHOOT:
		animatedsprite.play('shoot')

func _on_attack_timer_timeout() -> void:
	current_state = STATE.SHOOT
	shoot.execute(self)
	await get_tree().create_timer(0.5).timeout
	
func update_muzzle_position() -> void:
	if facing == Character.Facing.RIGHT:
		muzzle.position.x = abs(muzzle_position.x) 
	else:
		muzzle.position.x = -abs(muzzle_position.x) 

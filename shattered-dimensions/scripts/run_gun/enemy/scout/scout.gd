extends BaseEnemy
class_name Scout

@export var leash_distance: float = 400 
@export var follow_distance: float = 400 
@export var shoot_interval: float = 2.0 
@onready var attack_timer: Timer = $AttackTimer
@onready var muzzle : Marker2D = $Muzzle
var muzzle_position : Vector2
var is_following : bool
 
func _ready() -> void:
	super._ready()
	follow = EnemyFollowCommand.new(player)
	bullet = preload('res://scenes/run_gun/enemies/scout/scout_bullet.tscn')
	if player:
		follow.execute(self)
	set_bullet_type(bullet)
	muzzle_position = muzzle.position

func _physics_process(delta: float) -> void:
	move_and_slide()
	prevent_landing_on_player()
	if player != null:
		var distance_to_player = (player.global_position - global_position).length()
		if distance_to_player <= follow_distance and !is_following:
			is_following = true
			current_state = STATE.FOLLOW
		elif distance_to_player > leash_distance and is_following:
			is_following = false
			velocity.x = 0  
			attack_timer.stop()
			current_state = STATE.IDLE
		if is_following:
			status = follow.execute(self)
			if status == Command.Status.ACTIVE:
				current_state = STATE.FOLLOW
				if attack_timer.is_stopped():
					attack_timer.start(shoot_interval)  
			else:
				current_state = STATE.IDLE
	else:
		attack_timer.stop()
		current_state = STATE.IDLE
	update_animation()
		
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
	current_state = STATE.FOLLOW
	
func update_muzzle_position() -> void:
	if facing == Character.Facing.RIGHT:
		muzzle.position.x = abs(muzzle_position.x) 
	else:
		muzzle.position.x = -abs(muzzle_position.x) 
		
func prevent_landing_on_player() -> void:
	if is_on_floor() and player != null:
		var player_rect = player.global_position
		var boss_rect = global_position

		if abs(player_rect.x - boss_rect.x) < 1: 
			if player_rect.x > boss_rect.x:
				global_position.x -= 30  
			else:
				global_position.x += 30  

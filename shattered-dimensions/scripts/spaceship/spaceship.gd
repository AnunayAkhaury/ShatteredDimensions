class_name Spaceship
extends CharacterBody2D

@export var fullhealth: Texture2D
@export var damage1: Texture2D
@export var damage2: Texture2D
@export var damage3: Texture2D
@export var weapons_scene:PackedScene
@export var key_scene:PackedScene

@onready var appearance: Sprite2D = $Base
@onready var camera: Camera2D = %Camera2D
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"
@onready var boost: AnimatedSprite2D = $Boost
@onready var healthBar: TextureProgressBar = %Health
@onready var pause_menu: Node2D = %PauseMenu

var WIDTH: int = 5
var healthLevel: int = 100
var speed: int = 175
var binded: bool = true
var bounce: bool = false
var curr_boost: bool = false
var currweapon = null
var keepstill = false
var keycreated = false
var allowFire = true
var lost = false


# start with full health for spaceship
func _ready() -> void:
	appearance.texture = fullhealth


func _process(delta: float) -> void:
	
	# stop autoscroll if reached end of game
	if camera.position.x >= 8000:
		keepstill = true
		if len(get_parent().get_node("Camera2D/KillCount").get_children()) > 0:
			lost = true
		
		# create the golden key for pickup
		if not keycreated and not lost:
			create_key()
	
	# shoot missles from spaceship
	if binded and allowFire and Input.is_action_just_pressed("fire"):
		currweapon = fire_arrows()
		
	# apply boost to spaceship movement
	if binded and Input.is_action_just_pressed("boost"):
		curr_boost = true
		animation_player.play("boost")
	
	# bounce spaceship back upon collision
	if bounce:
		binded = false
		position.x -= 0.3 * speed * delta
		
	manage_health()
	
	# update health bar level
	healthBar.value = healthLevel
	
	# horizontal movement of spaceship
	var horizontal_input = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	if binded and horizontal_input > 0.1:
		if curr_boost:
			position.x += horizontal_input * speed * delta * 2.5
		else:
			position.x += horizontal_input * speed * delta * 1.5
	
	# vertical movement of spaceship and camera + rotation
	var vertical_input = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	if binded and abs(vertical_input)>0.1:
		if curr_boost:
			position.y = clampf(position.y+(vertical_input * speed * delta * 2), -1000, 1000)
		else:
			position.y = clampf(position.y+(vertical_input * speed * delta), -1000, 1000)
		if not keepstill:
			camera.position.y = clampf(camera.position.y + (0.97 * vertical_input * speed * delta), -750, 750)
	
	move_arrow_set(currweapon)

# manage the health and appearance of the spaceship
func manage_health():
	# explode spaceship if health reaches 0
	if healthLevel<=0 or lost:
		animation_player.play("explosion")
		visible = false
		
		# show pause menu
		for i in pause_menu.get_children():
			if i is Button:
				i.disabled = false
			i.visible = true
		binded = false	
	
	# manage spaceship appearance based on healthLevel
	elif healthLevel>=90:
		appearance.texture = fullhealth
	elif healthLevel>=60:
		appearance.texture = damage1
	elif healthLevel>=30:
		appearance.texture = damage2
	elif healthLevel>0:
		appearance.texture = damage3
	return


# load and fire a new set of arrows
func fire_arrows() -> Arrows:
	currweapon = weapons_scene.instantiate() as Arrows
	get_parent().add_child(currweapon)
	currweapon.get_node("Weapons").position = position+get_node("Base").position
	var count = 0
	for arrow in currweapon.get_node("Arrows").get_children():
		arrow.position = position+get_node("Base").position+currweapon.arrowBases[count]
		count += 1
	currweapon.startFire = true
	allowFire = false
	return currweapon


# handle scenario where the spaceship is moving during arrow firing animation
func move_arrow_set(currweapon):
	# keep arrows on spaceship until released
	if currweapon and is_instance_valid(currweapon) and currweapon.get_node("Weapons").visible:
		currweapon.get_node("Weapons").position = position+get_node("Base").position
		var count = 0
		for arrow in currweapon.get_node("Arrows").get_children():
			if not arrow.visible:
				arrow.position = position+get_node("Base").position+currweapon.arrowBases[count]
			count += 1
	return

# key creation upon winning
func create_key():
	var key = key_scene.instantiate() as SpaceshipKey
	get_parent().add_child(key)
	key.position = camera.position
	keycreated = true
	animation_player.play("key")
	return


# restart the game
func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()


# return to lobby
func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/prison.tscn")

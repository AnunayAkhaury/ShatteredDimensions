extends Node2D

@onready var lock1 = get_parent().get_node("Locks/Lock1")
@onready var lock2 = get_parent().get_node("Locks/Lock2")
@onready var lock3 = get_parent().get_node("Locks/Lock3")
@onready var lock4 = get_parent().get_node("Locks/Lock4")
@onready var unlock: AudioStreamPlayer2D = %Unlock

func _process(delta: float) -> void:
	if GlobalVars.platformerCompleted and lock1:
		completeLevel(lock1, "Platformer")
		lock1 = null
		
	if GlobalVars.carCompleted and lock2:
		completeLevel(lock2, "Car")
		lock2 = null
		
	if GlobalVars.shooterCompleted and lock3:
		completeLevel(lock3, "Shooter")
		lock3 = null
		
	if GlobalVars.spaceshipCompleted and lock4:
		completeLevel(lock4, "Spaceship")
		lock4 = null
		
func completeLevel(lock, level):
	unlock.play()
	get_node(level).monitoring = false
	lock.locked = true

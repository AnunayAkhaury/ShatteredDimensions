extends Node2D
@onready var character_body = $Character

func _ready():
	Global.run_gun = true
	character_body.collision_layer &= ~1  # Remove layer 1
	character_body.collision_layer |= 2   # Add layer 2
	#character_body.collision_mask &= ~1   # Remove layer 1
	#character_body.collision_mask |= 2    # Add layer 2
	#character_body.collision_mask |= 4    # Add layer 3
	print("Collision Layer (Decimal): ", character_body.collision_layer)
	print_collision_layers(character_body.collision_layer)

func print_collision_layers(layers):
	print("Active Layers:")
	for i in range(1, 33):  
		if layers & (1 << (i - 1)):  
			print("Layer ", i, " is active")

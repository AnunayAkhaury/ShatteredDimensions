class_name Cage
extends Area2D

var health: int
var num_bullets_before_hint: int = 15
var blasted: bool

func _init() -> void:
	health = 100
	area_entered.connect(_on_area_entered)
	blasted = false
	
func _on_area_entered(ammo: Area2D) -> void:
	if ammo is Ammo:	
		var ammo_is_missile = ammo is Missile
		ammo.queue_free()
		if ammo_is_missile:
			health -= 100
			if health <= 0:
				var explosion = get_child(2)
				explosion.visible = true
				explosion.play("default")
				
				blasted = true
				get_child(0).visible = false
				%CageHint1.visible = false
				%CageHint2.visible = false

				%Car.movement_enabled = true
		else:
			num_bullets_before_hint -= 1
			if num_bullets_before_hint == 0:
				%CageHint1.visible = true
				%CageHint2.visible = true
				if %Car.tot_missiles == 0:
					%CageHint1.text = "You don't have the weapons\nto break the cage!"
					%CageHint2.text = "You don't have the weapons to break the cage!"
					await get_tree().create_timer(4).timeout
					%Car.health = 0


func _on_explosion_animation_finished() -> void:
	queue_free() # Replace with function body.

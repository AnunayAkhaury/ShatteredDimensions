extends BaseBullet
class_name SpiralBullet

func _ready() -> void:
	bullet_impact_effect = preload("res://scenes/run_gun/powerups/spiral_bullet_powerup/spiral_bullet_impact.tscn")
	speed = 800  # Override speed
	damage_amount = 5  # Override damage

extends Node2D

var mushroom_attack_sprite: Sprite2D
var mushroom_attack : AnimationPlayer

func _ready() -> void:
	mushroom_attack_sprite = $MushroomAttack
	mushroom_attack = $MushroomAttack/AnimationPlayer
	mushroom_attack_sprite.flip_h = true

func _process(delta: float) -> void:
	mushroom_attack.play('attack')

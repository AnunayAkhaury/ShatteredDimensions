extends Node2D

var bat_attack_sprite: Sprite2D
var bat_attack : AnimationPlayer

func _ready() -> void:
	bat_attack_sprite = $BatAttack
	bat_attack = $BatAttack/AnimationPlayer
	bat_attack_sprite.flip_h = true

func _process(delta: float) -> void:
	bat_attack.play('attack')

extends AnimatableBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	animation_player.stop()
	
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		if not animation_player.is_playing():
			animation_player.play("move")


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if not animation_player.is_playing():
			animation_player.play("move")

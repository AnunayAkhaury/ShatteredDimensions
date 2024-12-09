extends Control


func _process(delta: float) -> void:
	await get_tree().create_timer(1).timeout
	if self.position.y > -1300:
		self.position.y -= 100 * delta



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu_screens/game_menu.tscn")

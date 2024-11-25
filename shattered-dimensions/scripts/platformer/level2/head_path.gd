extends Path2D


@onready var path_follow_2d: PathFollow2D = $PathFollow2D
@onready var path_follow_2d_2: PathFollow2D = $PathFollow2D2
@onready var path_follow_2d_3: PathFollow2D = $PathFollow2D3
@onready var path_follow_2d_4: PathFollow2D = $PathFollow2D4

func _process(delta: float) -> void:
	path_follow_2d.progress += 100 * delta
	path_follow_2d_2.progress += 100 * delta
	path_follow_2d_3.progress += 100 * delta
	path_follow_2d_4.progress += 100 * delta

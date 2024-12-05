extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var curve = $Path2D2.curve
	var polygon = curve.get_baked_points()
	
	$Polygon2D2.polygon = polygon
	$Line2D2.points = polygon
	
	$CollisionPolygon2D2.polygon = polygon

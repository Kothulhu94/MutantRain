func foo():
	var angle_degrees = 135
	var quadrant = (
		"northeast" if angle_degrees <= 90
		else "southeast" if angle_degrees <= 180
		else "southwest" if angle_degrees <= 270
		else "northwest"
	)

	var position = Vector2(250, 350)
	if (
		position.x > 200 and position.x < 400
		and position.y > 300 and position.y < 400
	):
		pass

	var a = (
		1 + 2
	)

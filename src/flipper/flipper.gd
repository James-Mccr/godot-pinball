extends Node2D

var flip_angle = 30
var flip_time = 0.0
var flip_time_max = 0.075
@export var clockwise = -1

func _physics_process(delta):
	if (Input.is_action_pressed("ui_accept")):	
		if (flip_time < flip_time_max):
			flip_time += delta
			if (flip_time > flip_time_max):
				flip_time = flip_time_max
			rotation_degrees = (flip_time / flip_time_max) * flip_angle * clockwise
	else:
		if (flip_time > 0):
			flip_time -= delta
			if (flip_time < 0):
				flip_time = 0
			rotation_degrees = (flip_time / flip_time_max) * flip_angle * clockwise
	


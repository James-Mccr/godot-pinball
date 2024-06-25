extends RigidBody2D

func _ready():
	var viewport = get_viewport()
	position.x = viewport.size.x/4
	position.y = viewport.size.y/4

func _integrate_forces(state):
	var viewport = get_viewport()
	if (!$VisibleOnScreenNotifier2D.is_on_screen()):
		position.x = randf_range(0, viewport.size.x)
		position.y = 50

func _on_body_entered(body):
	if body.collision_layer == 2:
		body.animate()

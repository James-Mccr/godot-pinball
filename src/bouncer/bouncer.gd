extends StaticBody2D

func animate():
	$Sprite2D.play("hit")
	await get_tree().create_timer(0.5).timeout
	$Sprite2D.play("idle")

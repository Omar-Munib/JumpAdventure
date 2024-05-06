extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		#var character = body.get_child()
		# Check if the character has the "play_hit_animation" method
		if body.has_method("play_hit_animation"):
			print("animation found")
			body.play_hit_animation()
			# Call the play_hit_animation method of the character
		Engine.time_scale = 0.5
		timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()

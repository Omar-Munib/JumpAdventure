extends Area2D

@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("SpikeTrigger")

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		#var character = body.get_child()
		# Check if the character has the "play_hit_animation" method
		
		if body.has_method("play_hit_animation"):
			print("animation found")
			# Call the play_hit_animation method of the character
		timer.start()

func _on_timer_timeout():
	get_tree().reload_current_scene()

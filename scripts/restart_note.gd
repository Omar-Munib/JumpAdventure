extends Area2D

@onready var panel = $Panel

func _ready():
#  To hide the label note when the game starts
	panel.hide()

func _on_body_entered(body):
# To show the note
	if(body.name == "CharacterBody2D"):
		print("You are stuck! Restart")
		panel.show()

func _on_body_exited(body):
# To hide the note once it is restarted
	panel.hide()

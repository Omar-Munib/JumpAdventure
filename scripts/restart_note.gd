extends Area2D

@onready var panel_2 = $"../../UI/Panel2"

func _ready():
#  To hide the label note when the game starts
	panel_2.hide()

func _on_body_entered(body):
# To show the note
	if(body.name == "CharacterBody2D"):
		print("You are stuck! Restart")
		panel_2.show()

func _on_body_exited(body):
# To hide the note once it is restarted
	panel_2.hide()

#For different platoform panels (Web or android)
#func _on_body_entered(body):
	## Show the appropriate panel based on the platform
	#if OS.get_name() == "HTML5":
		## Show the web panel if the game is running on the web
		#web_panel.show()
	#elif OS.get_name() == "Android":
		## Show the Android panel if the game is running on Android
		#android_panel.show()
#
	## Original logic to show the panel for a specific body
	#if body.name == "CharacterBody2D":
		#print("You are stuck! Restart")
		## Show the appropriate panel based on the platform
		#if OS.get_name() == "HTML5":
			#web_panel.show()
		#elif OS.get_name() == "Android":
			#android_panel.show()

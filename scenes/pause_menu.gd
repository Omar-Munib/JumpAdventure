extends Control

@export var game_manager : GameManager

func _ready():
	hide()
	game_manager.connect("toggle_game_paused", _on_game_manager_toggle_game_paused)

func _process(delta):
	pass

func _on_game_manager_toggle_game_paused(is_paused : bool):
	if(is_paused):
		show()
	else:
		hide()

func _on_settings_button_pressed():
	var settings_container = get_node("Panel/VBoxContainer/SettingsButton/PanelContainer")
	print(self.get_path())
	if settings_container:
		settings_container.show()
		print("container found")
	else:
		print("container not found")

func _on_resume_button_pressed():
	game_manager.game_paused = false
	print("button pressed")

func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
	#game_manager.game_paused = false
#to exit the game and shut it off use code below
	#get_tree().quit() 





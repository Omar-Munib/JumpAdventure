extends Node

var game_manager

func _ready():
	game_manager = get_node("GameManager")

func _on_level_select_button_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level_select.tscn")

func _on_settings_button_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/settings_menu.tscn")

func _on_button_4_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/control_screen.tscn")


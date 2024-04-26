extends Node

var game_manager

func _ready():
	game_manager = get_node("GameManager")

func _on_button_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level1.tscn")

func _on_button_2_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level2.tscn")

func _on_button_3_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level3.tscn")

func _on_level_4_button_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level4.tscn")

func _on_button_4_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/control_screen.tscn")



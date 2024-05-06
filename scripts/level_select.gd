extends Node

var game_manager

# Called when the node enters the scene tree for the first time.
func _ready():
	game_manager = get_node("GameManager")

func _on_level_1_button_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level1.tscn")

func _on_level_2_button_2_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level2.tscn")

func _on_level_3_button_3_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level3.tscn")

func _on_level_4_button_4_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level4.tscn")

func _on_level_5_button_5_pressed():
	game_manager.game_paused = false
	get_tree().change_scene_to_file("res://scenes/level5.tscn")

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

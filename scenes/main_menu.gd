extends Node

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/level1.tscn")

func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/level2.tscn")

func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://scenes/level3.tscn")

func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://scenes/control_screen.tscn")

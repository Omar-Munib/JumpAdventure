extends Area2D

@export var target_level : PackedScene
@onready var game_manager = %GameManager

func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
#to check if all collectables are collected:
		print(game_manager.are_all_collectibles_collected())
		if game_manager.are_all_collectibles_collected() and game_manager.finish_line_available():
			get_tree().change_scene_to_packed(target_level)
		else:
			print("You need to collect all the collectables")

#var collectibles_collected: int = 0
#var total_collectibles: int = 0

#func _ready():
	# Count the total number of collectibles in the level
	#for child in get_children():
		#if child.name.startswith("Collectable"):
			#total_collectibles += 1


#
#func collect_collectible():
	#collectibles_collected += 1
	#if collectibles_collected == total_collectibles:
		# If all collectibles are collected, proceed to the next level
		#get_tree().change_scene_to_packed(target_level)
#
#func _on_body_entered(body):
	#if body.name == "CharacterBody2D":
		# Check if all collectibles are collected before proceeding
		#if collectibles_collected == total_collectibles:
			#get_tree().change_scene_to_packed(target_level)

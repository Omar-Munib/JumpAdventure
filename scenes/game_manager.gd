extends Node

class_name GameManager

@onready var points_label = %PointsLabel
@onready var collectables_group = null
var collectibles_collected: int = 0
var total_collectibles: int = 0
var finish_line_collected = false
var points = 0

func _ready():
# Find the collectables group node in the scene
	collectables_group = get_node("../SceneObjects/CollectablesGroup")
	# Check if collectables_group is valid
	if collectables_group:
		# Iterate through each child node of collectables_group
		for child in collectables_group.get_children():
			#print("Collectable Data:", child.get_name())
			total_collectibles += 1
			#print("Total collectibles: ", total_collectibles)
	else:
		print("Collectables group not found!")

func add_point():
	points += 1
	print(points)
	points_label.text = "Points: " + str(points) + "/" + str(total_collectibles)

func collect_collectible():
	collectibles_collected += 1
	total_collectibles -= 1

func are_all_collectibles_collected() -> bool:
	print("returning the bool of all collected melons")
	print("points: " + str(points))
	print("total: " + str(total_collectibles))
	return points >= total_collectibles

func finish_line_available() -> bool:
	return finish_line_collected == false

func collect_finish_line():
	finish_line_collected = true

signal toggle_game_paused(is_paused : bool)

var game_paused : bool = false:
	get:
		return game_paused
	set(value):
		game_paused = value
		get_tree().paused = game_paused
		emit_signal("toggle_game_paused", game_paused)

func _input(event : InputEvent):
	if(event.is_action_pressed("pause")):
		game_paused = !game_paused

extends Node

@onready var points_label = %PointsLabel
@onready var collectables_group = $"../SceneObjects/CollectablesGroup"

var collectibles_collected: int = 0
var total_collectibles: int = 0
var finish_line_collected = false
var points = 0


func _ready():
		# Get the nodes in the group
	var collectables = collectables_group
	print("Size " + str( collectables_group))
	# Iterate through each node and print its data
	for collectable in collectables:
		print("Collectable Data:", collectable.get_name(), collectable.position)

	for child in get_tree().get_nodes_in_group("CollectablesGroup"):
		print(child.name)
		total_collectibles += 1
		print("Total collectibles: ", total_collectibles)

func add_point():
	points += 1
	print(points)
	points_label.text = "Points: " + str(points)

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


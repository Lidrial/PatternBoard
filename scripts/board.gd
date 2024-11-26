extends Control

const CELL_SCENE := preload("res://scenes/cell.tscn")
const BOARD_SIZE := 16

func _ready():
	var grid = $GridContainer
	grid.columns = BOARD_SIZE
	
	for i in range(BOARD_SIZE * BOARD_SIZE):
		var cell_instance = CELL_SCENE.instantiate()
		grid.add_child(cell_instance)
	pass 

func _process(_delta):
	pass

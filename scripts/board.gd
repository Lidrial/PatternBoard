#pour test final, supprimer le noeud grid container et ses enfants dans la scéne board
#problème a venir, on ne peut pas changer la propriété des ancrages, via le script

extends Control

const CASE_SCENE := preload("res://scenes/case.tscn")
const BOARD_SIZE := 16

func _ready():
	var grid = GridContainer.new()
	grid.columns = BOARD_SIZE
	add_child(grid)
	
	for i in range(BOARD_SIZE * BOARD_SIZE):
		var case_instance = CASE_SCENE.instantiate()
		#case_instance.id = i #permet de nommer la case en fonction de N répétition, NE MARCHE PAS
		grid.add_child(case_instance)
	pass 


func _process(_delta):
	pass

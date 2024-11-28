extends Control

const TILESET_PATH := "res://scenes/cell.tscn"
const BOARD_SIZE := 16
const TILE_SIZE := 32  # Define a fixed size for each cell

func _ready():
	var tilemap = $TileMapLayer
	
	# Calculate the offset to center the grid
	var offset = Vector2(-BOARD_SIZE * TILE_SIZE / 2, -BOARD_SIZE * TILE_SIZE / 2)
	tilemap.position = offset
	
	# Populate the TileMap with tiles
	for x in range(BOARD_SIZE):
		for y in range(BOARD_SIZE):
			tilemap.set_cell(Vector2i(x, y), 0, Vector2i(0, 0), 0)  # Set the tile at (x, y) with source_id 0, atlas_coords (0, 0), and alternative_tile 0

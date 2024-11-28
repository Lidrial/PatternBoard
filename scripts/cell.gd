extends TextureButton

const COIN_SCENE := preload("res://scenes/coin.tscn")

func _ready():
	pass 



func _process(_delta):
	pass


func _cell_is_pressed():
	print("nombre enfant de Cell ", get_child_count())
	print("position", global_position)

	#suppression si il y a deja un enfant coin
	for child in get_children():
		if child.name == "Coin":
			child.queue_free()
			return
	
#instancie un nouveau Coin
	var coin_instance = COIN_SCENE.instantiate()
	coin_instance.name = "Coin"
	add_child(coin_instance)

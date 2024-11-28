extends Node2D

var contact_count = 0

func _ready():
	pass

func _process(_delta):
	
	#code de la logique des coin (les regle du jeux)

	#if contact_count == 2:
		#rotation_degrees = 180
	#if contact_count == 4:
		#rotation_degrees = 0
	#if contact_count == 5:
		#queue_free()
	pass
	
	
func _on_contact_area_entered(_area):
	contact_count += 1
	print("point de contact entrant ", get_instance_id()," : ", contact_count)

func _on_contact_area_exited(_area):
	contact_count -= 1
	print("point de contact sortant ", get_instance_id()," : ", contact_count)

extends Node2D


func _process(delta):
	pass

func _ready():

	global.total_coins = get_tree().get_nodes_in_group("coin").size()
	global.coins = 0  

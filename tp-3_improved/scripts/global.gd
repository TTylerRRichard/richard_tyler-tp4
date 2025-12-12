extends Node

var coins: int = 0
var player_current_attack = false

var current_scene = "world"
var transition_scene = false

var player_exit_leveltwo_posx = 0
var player_exit_leveltwo_posy = 0
var player_start_posx = 0
var player_start_posy = 0


func finish_changescenes():
	if transition_scene == true:
		transition_scene = false
		if current_scene == "world":
			current_scene = "leveltwo"
		else:
			current_scene = "world"
			



func add_coin(amount: int):
	coins += amount
	print("Coins: ", coins)
	get_tree().call_group("hud", "update_coin_label", coins)

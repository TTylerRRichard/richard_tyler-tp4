extends Node

var player_current_attack = false

var current_scene = "world"
var transition_scene = false

var player_exit_leveltwo_posx = 0
var player_exit_leveltwo_posy = 0
var player_start_posx = 0
var player_start_posy = 0

var player_damage = 20      # default damage in world
var level_two_damage = 40   # damage boost for level 2
var world_damage = 20       # base damage for world

func finish_changescenes():
	if transition_scene == true:
		transition_scene = false

		if current_scene == "world":
			current_scene = "leveltwo"
			player_damage = level_two_damage   # BOOST DAMAGE
		else:
			current_scene = "world"
			player_damage = world_damage       # NORMAL DAMAGE

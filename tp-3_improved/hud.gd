extends CanvasLayer

@onready var coin_label = $CoinLabel
@onready var goal_label = $GoalLabel
func _ready():
	add_to_group("hud")
	update_coin_label(global.coins)



func update_coin_label(value):
	coin_label.text = str(value)

extends Area2D

@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	if body.name != "Player":
		return

	global.add_coin(1)
	print("+1 coin!")
	animation_player.play("pickup")

func _on_area_entered(area: Area2D) -> void:
	queue_free()

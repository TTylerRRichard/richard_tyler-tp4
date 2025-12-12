extends Area2D

@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	print("+! coin!")
	animation_player.play("pickup")


func _on_area_entered(area: Area2D) -> void:
	queue_free()

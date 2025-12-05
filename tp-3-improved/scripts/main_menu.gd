extends Control

@onready var main_buttons: VBoxContainer = $MainButtons
@onready var options: Panel = $Options

func _ready():
	main_buttons.visible = true
	options.visible = false
	
func _on_Start_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/world.tscn")


func _on_Options_pressed() -> void:
	pass # Replace with function body.
	main_buttons.visible = false
	options.visible = true



func _on_Quit_pressed() -> void:
	get_tree().quit()


func _on_Back_pressed() -> void:
	_ready()

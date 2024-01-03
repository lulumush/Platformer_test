extends Node2D

@onready var start_button = $Control/VBoxContainer/start_button

func _ready():
	start_button.grab_focus()


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")

func _on_quit_button_pressed():
	get_tree().quit()

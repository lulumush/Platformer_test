extends Control

@onready var play_again = $VBoxContainer/play_again

func _ready():
	play_again.grab_focus()


func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")


func _on_quit_pressed():
	get_tree().quit()

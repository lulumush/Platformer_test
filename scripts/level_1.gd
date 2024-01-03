extends Node2D

func _on_next_level_trigger_body_entered(body):
	if body.is_in_group("player"):
		call_deferred("go_to_next_level")

func go_to_next_level():
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")


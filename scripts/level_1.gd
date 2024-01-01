extends Node2D

@onready var game_over_sound = $game_over_sound

func _on_death_area_body_entered(body):
	if body.is_in_group("player"):
		game_over_sound.play()
		
func reset_level():
	get_tree().reload_current_scene()


func _on_next_level_trigger_body_entered(body):
	if body.is_in_group("player"):
		call_deferred("go_to_next_level")

func go_to_next_level():
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")


func _on_game_over_sound_finished():
	call_deferred("reset_level")

	

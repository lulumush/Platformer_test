extends Area2D

@onready var game_over_sound = $game_over_sound

func _on_body_entered(body):
	if body.is_in_group("player"):
		game_over_sound.play()

func _on_game_over_sound_finished():
	call_deferred("reset_level")

func reset_level():
	get_tree().reload_current_scene()

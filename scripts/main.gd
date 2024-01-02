extends Node2D

func _on_death_area_body_entered(body):
	if body.is_in_group("player"):
		call_deferred("reset_level")
		
func reset_level():
	get_tree().reload_current_scene()


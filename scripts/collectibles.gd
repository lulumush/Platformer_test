extends Area2D

@onready var collectible_sound = $collectible_sound
@onready var sprite_2d = $Sprite2D

func _on_body_entered(body):
	if body.is_in_group("player"):
		collectible_sound.play()
		sprite_2d.hide()
		


func _on_collectible_sound_finished():
	queue_free()

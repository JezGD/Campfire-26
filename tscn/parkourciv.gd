extends Area2D

@onready var Audiostream = $parkourciv
func _on_area_2d_body_entered(body: Area2D) -> void:
	if body.name == "Player": 
		Audiostream.play()

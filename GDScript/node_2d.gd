extends Node2D

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()

func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.

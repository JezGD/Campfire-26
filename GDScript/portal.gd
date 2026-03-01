extends Area2D

@export var target_portal : Node2D

func _on_body_entered(body):
	if target_portal == null:
		return
	print(body.name)
	if "Player" == body.name:
		body.position = target_portal.position

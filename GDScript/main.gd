extends Node2D
@onready var player: CharacterBody2D = $Player
@onready var cam: Camera2D = $Camera2D
@onready var Death = $Player/Death
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for spike in $Spikes.get_children():
		spike.get_child(0).body_entered.connect(_on_area_2d_body_entered)
	for not_spike in $Not_Spikes.get_children():
		not_spike.get_child(0).body_entered.connect(_on_area_2d_body_entered)
	for Crystal in $Crystals.get_children():
		Crystal.get_child(0).body_entered.connect(_on_area_2d_body_entered)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	cam.position = player.position.snapped(get_viewport_rect().size / 2)
func _on_area_2d_body_entered(body: Node2D) -> void:
		if body.name == "Player":
			Death.play()
			
func _on_death_finished() -> void:
	get_tree().reload_current_scene()

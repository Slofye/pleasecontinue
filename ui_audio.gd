extends Node


@onready var hover_player: AudioStreamPlayer2D = $HoverButtonSound
@onready var click_player: AudioStreamPlayer2D = $ClickButtonSound
@onready var toggle_player: AudioStreamPlayer2D = $ToggleButtonSound


func play_hover() -> void:
	hover_player.pitch_scale = randf_range(0.90, 1.10)
	hover_player.play()


func play_click() -> void:
	click_player.pitch_scale = randf_range(0.90, 1.10)
	click_player.play()
	
func play_toggle() -> void:
	toggle_player.pitch_scale = randf_range(0.90, 1.10)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

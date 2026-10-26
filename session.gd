extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause_menu") and not event.is_echo() and not $SettingsPanel.visible:
		$SettingsPanel.show()
	else:
		if $SettingsPanel.visible and event.is_action_pressed("pause_menu") and not event.is_echo():
			$SettingsPanel.hide()

extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_new_game_button_pressed() -> void:
	get_tree().change_scene_to_file("res://session.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_back_button_pressed() -> void:
	$MainMenuSettingsPanel.hide()
	$MainMenuContents.show()


func _on_settings_button_pressed() -> void:
	$MainMenuSettingsPanel.show()
	$MainMenuContents.hide()


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause_menu") and not event.is_echo() and not $MainMenuSettingsPanel.visible:
		get_tree().quit()
	elif $MainMenuSettingsPanel.visible:
		$MainMenuSettingsPanel.hide()
		$MainMenuContents.show()


func _on_toggle_fullscreen_toggled(toggled_on: bool) -> void:
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		print('Fullscreen')
	else: 
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		print('Windowed')

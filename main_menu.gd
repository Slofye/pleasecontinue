extends Control


func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass


# behaviors depending on the main menu buttons that are clicked
func _on_menu_button_pressed(action: String) -> void:
	UiAudio.click_player.play()
	
	match action:
		"new_game":
			get_tree().change_scene_to_file("res://session.tscn")
			
		"settings":
			$SettingsPanel.show()
			# $MainMenuContents.hide()

		"back":
			$SettingsPanel.hide()
			$MainMenuContents.show()

		"quit":
			get_tree().quit()
			


# hover sound for main menu options
func _on_button_mouse_entered() -> void:
	UiAudio.hover_player.play()

	
# logic for desired behavior with the escape button exiting game or settings menu
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause_menu") and not event.is_echo() and not $SettingsPanel.visible:
		get_tree().quit()
	elif $SettingsPanel.visible:
		$SettingsPanel.hide()
		$MainMenuContents.show()


# Fullscreen toggle in settings window
func _on_toggle_fullscreen_toggled(toggled_on: bool) -> void:
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else: 
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _on_toggle_fullscreen_pressed() -> void:
	UiAudio.toggle_player.play()

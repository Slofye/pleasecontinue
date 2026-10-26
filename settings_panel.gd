extends PanelContainer


func _ready() -> void:
	pass


func _process(_delta: float) -> void:
	pass


func _on_settings_panel_button_pressed(action: String) -> void:
	match action:
		"back":
			hide()
		"main_menu":
			get_tree().change_scene_to_file("res://main_menu.tscn")
			


func _on_back_button_pressed() -> void:
	hide()


func _on_toggle_fullscreen_toggled(toggled_on: bool) -> void:
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _on_music_volume_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_linear(AudioServer.get_bus_index("Music"), value / 100.0)


func _on_sfx_volume_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_linear(AudioServer.get_bus_index("SFX"), value / 100.0)

extends Control
const main_ui:PackedScene = preload("res://src/main_ui.tscn")

func _on_start_pressed() -> void:
	SceneTranslation.change_scene(main_ui)


func _on_settings_pressed() -> void:
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	get_tree().quit()

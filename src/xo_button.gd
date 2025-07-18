extends Button

func _on_button_up() -> void:
	if text == "":
		text = "O"
		return
	if text == "O":
		text = "X"
		return
	if text == "X":
		text = ""
		return

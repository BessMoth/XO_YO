extends Button
class_name XOButton

var type: int = 0
func rest()->void:
	type = 0
	text = ""

func _on_button_up() -> void:
	if type == 0:
		return
	if type == 1:
		text = "O"
	if type == -1:
		text = "X"
	return

extends Button
class_name XOButton
var main: MainUi

func _ready() -> void:
	main = get_parent().get_parent().get_parent()
	
func rest()->void:
	text = ""

func _on_button_up() -> void:
	if text == "":
		if main.turn:
			text = "O"
		else:
			text = "X"
		main.turn = !main.turn
	return

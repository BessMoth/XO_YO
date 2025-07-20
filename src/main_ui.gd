extends Control
class_name MainUi

@onready var rows: VBoxContainer = $Rows
@onready var pre_turn:bool = turn;

var turn:bool = true
var grid: Array[Node]
var intro_ui: PackedScene = load("res://src/intro_ui.tscn")

func turn_to_string():
	if pre_turn:
		return "O"
	else:
		return "X"
	
var win_positions = [
		[[0,0], [0,1], [0,2]],
		[[1,0], [1,1], [1,2]],
		[[2,0], [2,1], [2,2]],
		[[0,0], [1,0], [2,0]],
		[[0,1], [1,1], [2,1]],
		[[0,2], [1,2], [2,2]],
		[[0,0], [1,1], [2,2]],
		[[0,2], [1,1], [2,0]]
	]


#region Init

func restAllButtons()->void:
	for i:HBoxContainer in grid:
		for j:XOButton in i.get_children(false):
			j.rest()

func _ready() -> void:
	grid = rows.get_children(true)
	restAllButtons()
	
#endregion

func _process(delta: float) -> void:
	if isEnd():
		end()
	pre_turn = turn


#region Ending
func isComplete()->bool:
	for i:HBoxContainer in grid:
		for j:XOButton in i.get_children(false):
			if j.text == "":
				return false
	return true

func isEnd()->bool:
	if isComplete() or isWin():
		return true
	return false

func end()->void:
	SceneTranslation.change_scene(intro_ui)

func isWin() -> bool:
	for pos in win_positions:
		if rows.get_child(pos[0][0]).get_child(pos[0][1]).text == turn_to_string()\
		and rows.get_child(pos[1][0]).get_child(pos[1][1]).text == turn_to_string()\
		and rows.get_child(pos[2][0]).get_child(pos[2][1]).text == turn_to_string():
			return true
	return false

#endregion

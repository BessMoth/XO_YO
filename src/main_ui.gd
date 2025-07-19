extends Control
var grid: Array[Node]
@onready var rows: VBoxContainer = $Rows

var turn:bool = true

func _ready() -> void:
	grid = rows.get_children(true)
	for i:HBoxContainer in grid:
		for j:XOButton in i.get_children(false):
			print(j.type)
			
func _process(delta: float) -> void:
	pass
func SwitchTurn()->void:
	turn = not turn

#region Ending

func isWin()->bool:
	return true
	pass
func isTie()->bool:
	return true
	pass
func isEnd()->bool:
	return true
	pass
func end()->void:
	pass
#endregion

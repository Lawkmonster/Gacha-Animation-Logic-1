extends Node2D

var parent_menu

func _ready():
	if parent_menu:
		parent_menu.pull_completed.connect(data_received)
# Called when the node enters the scene tree for the first time.
func data_received():
	
	print("signal_receieved")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

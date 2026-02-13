extends Node2D

func ready():
	var gacha_data = get_node_or_null("PullLOGIC")
	if gacha_data == null:
		print("haha")
	gacha_data.pull_completed.connect(data_received)
	
# Called when the node enters the scene tree for the first time.
func data_received():
	print("signal received!.")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

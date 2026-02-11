extends CanvasLayer

@export var color_rect: ColorRect

var current_level : Node2D = null

func _ready():
	
	current_level = $"../MAIN_MENU"
	color_rect = $ColorRect
	color_rect.color.a = 0.0 # Replace with function body.
	color_rect.mouse_filter = Control.MOUSE_FILTER_IGNORE#
	
func fade(target_alpha: float, duration: float = 1.0):
	
	print("Fade function called")
	print("color_rect is: ", color_rect)
	var tween = create_tween()
	tween.tween_property(color_rect, "color:a", target_alpha, duration)
	return tween

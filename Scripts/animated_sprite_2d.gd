extends Node2D

@onready var fade = $fade
@onready var _animated_sprite = $AnimationPlayer/AnimatedSprite2D
var main_menu = preload("res://Assets/Scenes/animation_pre_results.tscn")

func _ready():
	
	GameManager.pull_completed.connect(data_received)
	
# Called when the node enters the scene tree for the first time.
func data_received(char_name: String, char_rarity: String):
	
	if char_rarity == "Rare":
		_animated_sprite.play("rare")
	
	
func _on_button_pressed():
	
	var current_level = $"."
	await fade.fade(2.0, 1.5).finished
	current_level.queue_free()
	await fade.fade(0.0, 1.5).finished
	get_tree().root.add_child(main_menu)

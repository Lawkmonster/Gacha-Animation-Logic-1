extends Node

@onready var fade = $animation_results/fade
@onready var _animated_sprite = $animation_results/AnimationPlayer/AnimatedSprite2D
var main_menu = preload("res://Assets/Scenes/main_menu.tscn")
var current_level = Node

func _ready():
	
	GameManager.pull_completed.connect(data_received)
	current_level = $animation_results
	
# Called when the node enters the scene tree for the first time.
func data_received(char_name: String, char_rarity: String):
	
	if char_rarity == "Rare":
		print ("signal received")
	else:
		_animated_sprite.play("common")
	
func _on_button_pressed():
	
	
	await fade.fade(2.0, 1.5).finished
	current_level.visible = false
	$animation_results/AnimationPlayer/AnimatedSprite2D.visible = false
	await fade.fade(0.0, 1.5).finished
	get_tree().change_scene_to_file("res://Assets/Scenes/node_2d.tscn")
	current_level.queue_free()


	

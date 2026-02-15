extends Node2D

@onready var fade = $"../fade"
@onready var _animated_sprite = $AnimationPlayer/AnimatedSprite2D


func _ready():
	
	GameManager.pull_completed.connect(data_received)
	
# Called when the node enters the scene tree for the first time.
func data_received(char_name: String, char_rarity: String):
	
	if char_rarity == "Rare":
		_animated_sprite.play("rare")
	else:
		_animated_sprite.play("common")
		
func _on_button_pressed():
	
	
	await fade.fade(2.0, 1.5).finished
	await fade.fade(0.0, 1.5).finished
	get_tree().change_scene_to_file("res://Assets/Scenes/node_2d.tscn")	
	
	
	

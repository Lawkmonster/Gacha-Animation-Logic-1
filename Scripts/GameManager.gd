# GameManager.gd
extends Node

signal pull_requested
signal pull_completed(char_name: String, char_rarity: String)
signal rarity_completed(char_rarity)


func _ready():
	add_to_group("autoload")

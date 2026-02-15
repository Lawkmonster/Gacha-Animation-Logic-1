# GameManager.gd
extends Node

signal pull_completed(char_name: String, char_rarity: String)


func _ready():
	add_to_group("autoload")

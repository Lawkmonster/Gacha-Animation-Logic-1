# GameManager.gd
extends Node

signal pull_requested
signal pull_completed(rarity: String)

func _ready():
	add_to_group("autoload")

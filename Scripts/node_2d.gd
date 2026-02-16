extends Node2D

@onready var fade = $"../fade"
var current_level: Node2D = null
var next_level = preload("res://Assets/Scenes/animation_pre_results.tscn")

# Character pool with pull rates
var characters = [
	{"name": "Common Sword", "rarity": "Common", "rate": 50.0},
	{"name": "Common Shield", "rarity": "Common", "rate": 0.0},
	{"name": "Rare Bow", "rarity": "Rare", "rate": 50.0},
	{"name": "Epic Staff", "rarity": "Epic", "rate": 0.0},
	{"name": "Legendary Dragon", "rarity": "Legendary", "rate": 0.0}
]

func _ready():
	
	current_level = $"../MAIN_MENU"
	randomize()

# Call this function to perform a pull
func pull():
	# Get total of all rates
	var total = 0.0
	for char in characters:
		total += char.rate
	
	# Random number
	var roll = randf() * total
	
	# Find which character was pulled
	var current = 0.0
	for char in characters:
		current += char.rate
		if roll <= current:
			
			print("★ You pulled: " + char.name + " [" + char.rarity + "]")
			GameManager.pull_completed.emit(char.name, char.rarity)
			return char
			
	return characters[0]
func _on_button_pressed():
	
	await fade.fade(2.0, 1.5).finished
	current_level.queue_free()
	await fade.fade(0.0, 1.5).finished
	var new_level = next_level.instantiate()
	add_child(new_level)
	pull()
	

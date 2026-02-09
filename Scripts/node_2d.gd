extends Node2D
		
# Character pool with pull rates
var characters = [
	{"name": "Common Sword", "rarity": "Common", "rate": 50.0},
	{"name": "Common Shield", "rarity": "Common", "rate": 20.0},
	{"name": "Rare Bow", "rarity": "Rare", "rate": 20.0},
	{"name": "Epic Staff", "rarity": "Epic", "rate": 9.0},
	{"name": "Legendary Dragon", "rarity": "Legendary", "rate": 1.0}
]

func _ready():
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
			return char
	
	return characters[0]

func _input(event):
	# Press SPACE to pull
	if event.is_action_pressed("ui_accept"):
		pull()

extends Node2D

var parent_menu
var pulled_character: Dictionary = {}

func _ready():
	if parent_menu:
		parent_menu.pull_completed.connect(data_received)

# Called when the signal is received with character data
func data_received(character: Dictionary):
	pulled_character = character
	print("Signal received: ", character.name, " [", character.rarity, "]")
	
	# Use if statement machine to determine which sprite to show
	match character.rarity:
		"Common":
			display_common_sprite()
		"Rare":
			display_rare_sprite()
		"Epic":
			display_epic_sprite()
		"Legendary":
			display_legendary_sprite()

func display_common_sprite():
	print("Showing Common sprite for: ", pulled_character.name)
	# Set your sprite/animation here

func display_rare_sprite():
	print("Showing Rare sprite for: ", pulled_character.name)
	# Set your sprite/animation here

func display_epic_sprite():
	print("Showing Epic sprite for: ", pulled_character.name)
	# Set your sprite/animation here

func display_legendary_sprite():
	print("Showing Legendary sprite for: ", pulled_character.name)
	# Set your sprite/animation here

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

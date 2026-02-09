extends Node

var character_rarity: Dictionary[String, float] = {
"common": 0.6,
"rare": 0.3,
"legendary": 0.1  
}

func _ready():
	print("=== Gacha Pull Logic Ready ===")
	print("Press SPACE to pull")
	print("Rarities: Common 60%, Rare 30%, Legendary 10%")
	print("Pity: Every 10 pulls guaranteed Legendary\n")

func pullLOGIC():
	pass


func probCALC():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.

extends Node3D

@onready var main_character_animation = $"CharacterBody3D/Looking Behind/AnimationPlayer"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		
	if Input.is_action_just_pressed("UI_Accept"):
		
		main_character_animation.play("Global2/mixamo_com_2")
	 

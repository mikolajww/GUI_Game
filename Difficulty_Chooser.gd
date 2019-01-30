extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func choose_difficulty(difficulty):
	Globals.difficulty = difficulty
	match difficulty:
		"easy":
			Globals.initalDifficulty = 2.0
			Globals.difficultyIncrement = 0.05
		"normal":
			Globals.initalDifficulty = 1.5
			Globals.difficultyIncrement = 0.1
		"hard":
			Globals.initalDifficulty = 1.0
			Globals.difficultyIncrement = 0.15
	get_tree().change_scene("res://World.tscn")

func _on_Easy_pressed():
	choose_difficulty("easy")

func _on_Normal_pressed():
	choose_difficulty("normal")

func _on_Hard_pressed():
	choose_difficulty("hard")

func _on_Go_Back_pressed():
	get_tree().change_scene("res://Start_Menu.tscn")

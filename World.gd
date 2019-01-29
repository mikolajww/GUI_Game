extends Node

func _ready():
	$Enemies/Timer.wait_time = Globals.initalDifficulty
	pass

func _on_Counter__player_dead():
	get_tree().change_scene("res://End_Screen.tscn")
	pass # replace with function body

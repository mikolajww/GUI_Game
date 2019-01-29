extends Node2D


func _ready():
	$Control/PointsLabel.text = str(Globals.points)
	$Control/Difficulty.text = Globals.difficulty
	pass


func _on_GoBack_pressed():
	Globals.points = 0
	get_tree().change_scene("res://Start_Menu.tscn")

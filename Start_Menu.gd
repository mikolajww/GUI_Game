extends Node2D

func _ready():
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -20)

func _on_StartGame_pressed():
	get_tree().change_scene("res://Difficulty_Chooser.tscn")
	pass # replace with function body


func _on_Controls_pressed():
	get_tree().change_scene("res://controls.tscn")
	pass # replace with function body

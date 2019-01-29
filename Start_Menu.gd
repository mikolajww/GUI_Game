extends Node2D


func _on_StartGame_pressed():
	get_tree().change_scene("res://World.tscn")
	pass # replace with function body


func _on_Controls_pressed():
	get_tree().change_scene("res://controls.tscn")
	pass # replace with function body

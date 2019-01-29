extends Node

var points = 0
var lives = 3
var audio_level = 1


func _ready():
	$Points.text = "Points:       " + str(points)
	$Lives.text = "Lives:       " + str(lives)

func _on_bullet_hit():
	points += 1
	$Points.text = "Points:       " + str(points)

func _on_enemy_bullet_hit():
	lives -= 1
	$Lives.text = "Lives:       " + str(lives)

func _on_HSlider_value_changed(value):
	print(linear2db(value))
	pass

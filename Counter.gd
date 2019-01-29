extends Node

var points = 0
var lives = 3
var audio_level = 1

signal _player_dead()

func _ready():
	$Points.text = "Points:       " + str(points)
	$Lives.text = "Lives:       " + str(lives)

func _on_bullet_hit():
	points += 1
	Globals.points += 1
	$EnemyHit.play()
	$Points.text = "Points:       " + str(points)

func _on_enemy_bullet_hit():
	lives -= 1
	$PlayerHit.play()
	if(lives == 0):
		emit_signal("_player_dead")
	$Lives.text = "Lives:       " + str(lives)

func _on_HSlider_value_changed(value):
	print(linear2db(value))
	pass


func _on_OOBEnemyDestroyer_body_entered(body):
	_on_enemy_bullet_hit()

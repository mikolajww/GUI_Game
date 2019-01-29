extends Node

const ENEMY = preload("res://Enemy.tscn")
var window_size = OS.get_window_size()

func _ready():
	pass

func _on_Timer_timeout():
	randomize()
	var enemy = ENEMY.instance()
	add_child(enemy)
	enemy.get_node("KinematicBody2D").global_position = Vector2(rand_range(32, window_size.x - 32), 32)
	enemy.get_node("KinematicBody2D").velocity = Vector2(rand_range(-1,1), rand_range(0,1))
	pass # replace with function body


func _on_OOBEnemyDestroyer_body_entered(body):
	body.get_parent().queue_free()
	pass # replace with function body

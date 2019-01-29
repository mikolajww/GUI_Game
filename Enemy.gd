extends Node2D

const textures = [preload("res://enemy_64.png")]
const BULLET = preload("res://Bullet.tscn")

var velocity = Vector2(0, 0)

func _ready():
	randomize()
	$KinematicBody2D/Sprite.texture = textures[randi()%(textures.size())]
	pass

func destroy():
	queue_free()

func fire():
	var bullet_right = BULLET.instance()
	bullet_right.global_position = $KinematicBody2D/Gun_Right.global_position
	bullet_right.velocity = Vector2(bullet_right.velocity.x, - bullet_right.velocity.y)
	bullet_right.get_node("Sprite").flip_h = true
	get_parent().add_child(bullet_right)
	var bullet_left = BULLET.instance()
	bullet_left.global_position = $KinematicBody2D/Gun_Left.global_position
	bullet_left.velocity = Vector2(bullet_left.velocity.x, - bullet_left.velocity.y)
	bullet_left.get_node("Sprite").flip_h = true
	get_parent().add_child(bullet_left)
	$AudioStreamPlayer2D.play()
	
func _on_Timer_timeout():
	fire()

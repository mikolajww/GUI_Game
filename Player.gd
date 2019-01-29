extends Node2D

const BULLET = preload("res://Bullet.tscn")
var can_shoot = false
var points = 0

func _ready():
	$Timer.start()
	pass

func _physics_process(event):
	if(Input.is_action_pressed("shoot") && can_shoot):
		fire()
		can_shoot = false

func fire():
	var bullet_right = BULLET.instance()
	bullet_right.global_position = $KinematicBody2D/Gun_Right.global_position
	get_parent().add_child(bullet_right)
	var bullet_left = BULLET.instance()
	bullet_left.global_position = $KinematicBody2D/Gun_Left.global_position
	get_parent().add_child(bullet_left)
	$BulletSound.play()

func _on_Timer_timeout():
	can_shoot = true
	pass # replace with function body

func _on_Bullet_Enemy_Hit():
	points += 1
	
func destroy():
	pass
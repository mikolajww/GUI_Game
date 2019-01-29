extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func _physics_process(delta):
	velocity = velocity.normalized() * speed
	var collision = move_and_collide(velocity * delta)
	if collision:
    	velocity = velocity.bounce(collision.normal)
extends KinematicBody2D

export (Vector2) var velocity = Vector2(0, -50)
signal _bullet_hit()

func _ready():
	#player bullet
	
	if(get_parent().name == "World"):
		connect("_bullet_hit", get_parent().get_node("Counter"), "_on_bullet_hit")
	#enemy bullet
	if(get_parent().name == "Enemies"):
		self.set_collision_mask_bit(3,1)
		connect("_bullet_hit", get_parent().get_parent().get_node("Counter"), "_on_enemy_bullet_hit")
	print(collision_mask)

func _process(delta):
	move_and_slide(velocity)
	if(get_slide_count() > 0):
		var collision_info = get_slide_collision(0)
		emit_signal("_bullet_hit")
		collision_info.collider.get_parent().destroy()
		destroy()

func _on_Timer_timeout():
	destroy()

func destroy():
	queue_free()
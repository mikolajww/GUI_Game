extends Sprite

export (int) var speed = 50


func _process(delta):
	position.y += speed * delta
	if(position.y >= get_viewport_rect().size.y):
		position.y = -512
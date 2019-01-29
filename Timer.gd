extends Timer

func _on_DifficultyScaling_timeout():
	self.wait_time -= Globals.difficultyIncrement
	pass # replace with function body

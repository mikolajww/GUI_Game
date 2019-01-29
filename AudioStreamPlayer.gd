extends AudioStreamPlayer

func _on_HSlider_value_changed(value):
	self.volume_db = linear2db(value)

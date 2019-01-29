extends Control

var audio_pos = 0.0
func _ready():
	pass

func _input(event):
	if(event.is_action_pressed("ui_pause")):
		audio_pos = get_parent().get_node("AudioStreamPlayer").get_playback_position()
		if(!get_tree().paused):
			get_parent().get_node("AudioStreamPlayer").stop()
		else:
			get_parent().get_node("AudioStreamPlayer").play(audio_pos)
		get_tree().paused = !(get_tree().paused)
	$CenterContainer.visible = get_tree().paused
	$HSlider.visible = get_tree().paused
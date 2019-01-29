extends Control

var audio_pos = 0.0
func _ready():
	pass

func _input(event):
	if(event.is_action_pressed("ui_pause")):
		audio_pos = get_parent().get_node("Soundtrack").get_playback_position()
		if(!get_tree().paused):
			get_parent().get_node("Soundtrack").stop()
		else:
			get_parent().get_node("Soundtrack").play(audio_pos)
		get_tree().paused = !(get_tree().paused)
	$Pause.visible = get_tree().paused
extends LinkButton

func _ready():
	pass

func _on_Label_pressed():
	OS.shell_open("https://github.com/mikolajww")

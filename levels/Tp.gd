extends Area2D


# Called when the node enters the scene tree for the first time.
func action() -> void:
	Dialogic.signal_event.connect(tpVila)
	Dialogic.start("tpVilaDosReis") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func tpVila(argument: String):
	if argument == "tp":
		get_tree().change_scene_to_file("res://levels/viladoreis.tscn")

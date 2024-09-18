extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.signal_event.connect(tpVila)
	Dialogic.start("tpVilaDosReis")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func tpVila(argument: String):
	if argument == "tp":
		print("bostaaa")
		get_tree().change_scene_to_file("res://levels/world_01.tscn")

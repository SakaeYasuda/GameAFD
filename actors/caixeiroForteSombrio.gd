extends CharacterBody2D

var player_in_area = false

func _process(delta):
	if player_in_area:
		if Input.is_action_just_pressed("e"):
			Dialogic.signal_event.connect(tpForte)
			run_dialogue("tpForte")

func run_dialogue(dialogue_string):
	Dialogic.start(dialogue_string)
	
func tpForte(argument: String):
	if argument == "tp1":
		get_tree().change_scene_to_file("res://levels/fortesombrio.tscn")

func _on_chat_detector_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = true # Replace with function body.


func _on_chat_detector_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = false # Replace with function body.

extends Node2D

var player_in_area = false

var senha = "3175625"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_in_area:
		if Input.is_action_just_pressed("e"):
			$Label.hide()
			$Label2.show()
			$LineEdit.show()

func run_dialogue(dialogue_string):
	Dialogic.start(dialogue_string)

func _on_line_edit_text_submitted(password: String):
	if password != "3175625":
		$LineEdit.hide()
		$Label.show()
		return
	else:
		run_dialogue("fim")
		$LineEdit.hide()
		$Area2D/Bau.play()
		
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = true # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.has_method("player"):
		player_in_area = false # Replace with function body.

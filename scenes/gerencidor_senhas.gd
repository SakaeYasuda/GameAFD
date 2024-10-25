extends Control

var senha = "123"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_line_edit_text_submitted(password: String):
	if !password in senha:
		$LineEdit.clear()
		$Label.show()
		return
	else:
		$AnimatedSprite2D.show()
	
	
	

extends ColorRect

var threshold = 0.0

# Called every frame. '_delta' is the elapsed time since the previous frame.
func _process(_delta):
	material.set("shader_parameter/threshold", threshold)

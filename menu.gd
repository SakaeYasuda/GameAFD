extends Control

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/world_01.tscn")

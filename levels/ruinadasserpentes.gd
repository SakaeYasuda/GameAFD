extends Node2D

func _ready():
	var config = ConfigFile.new()
	var path = "user://savegame.cfg"
	var error = config.load(path)
	
	if error == OK:
		var deve_aparecer = config.get_value("baú", "deve_aparecer", false)
		
		if deve_aparecer:
			var chest = get_node("chest")
			chest.visible = true
			config.set_value("baú", "deve_aparecer", false)
			config.save(path)
	else:
		print("Erro ao carregar as configurações: ", error)

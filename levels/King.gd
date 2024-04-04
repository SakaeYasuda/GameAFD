extends Area2D

func _on_Sage_interacted():
	var config = ConfigFile.new()
	var path = "user://savegame.cfg"
	config.set_value("baú", "deve_aparecer", true)
	var error = config.save(path)
	
	if error == OK:
		print("A informação foi salva com sucesso.")
	else:
		print("Erro ao salvar a informação: ", error)


func _on_body_entered(body):
	var config = ConfigFile.new()
	var path = "user://savegame.cfg"
	config.set_value("baú", "deve_aparecer", true)
	var error = config.save(path)
	
	if error == OK:
		print("A informação foi salva com sucesso.")
	else:
		print("Erro ao salvar a informação: ", error)

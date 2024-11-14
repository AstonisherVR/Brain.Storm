extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	preload("res://Legacy/Cutscene/intro_cutscene.tscn")

#func _process(delta):
	#pass

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Legacy/Cutscene/intro_cutscene.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()

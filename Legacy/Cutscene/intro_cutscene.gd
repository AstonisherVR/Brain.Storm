extends AnimationPlayer
# Called when the node enters thescene tree for the first time.
func _ready():
	play("Main_menu") # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		cutscene_end()

func _on_animation_finished(anim_name):
	cutscene_end()

func cutscene_end():
	print("Finished") 
	#preload("res://World/level_1.tscn")
	#get_tree().change_scene_to_file("res://World/level_1.tscn")
	stop()

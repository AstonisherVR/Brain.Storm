extends RigidBody3D

#@onready var player_camera: Camera3D = %PlayerCamera
@export var speed := 10.0
var acceleration := 20.0
var damping := 10.0
var direction: Vector3 = Vector3(0,0,1)

func _physics_process(_delta):
	handle_movement()

func handle_movement():
	#direction = Input.get_vector("Left", "Right", "Up", "Down")
	if Input.is_action_pressed("Up"):
		apply_central_force(direction * speed)
	if Input.is_action_pressed("Down"):
		apply_central_force(direction * speed)
	if Input.is_action_pressed("Left"):
		apply_central_force(direction * speed)
	if Input.is_action_pressed("Right"):
		apply_central_force(direction * speed)

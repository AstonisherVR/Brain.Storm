extends RigidBody3D

var speed: float = 20.0
@onready var camera : ThirdPersonCamera = $ThirdPersonCamera
@export var sens_horizontal = 0.5
@export var sens = 0.5

const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _ready():
	#Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	pass

func _physics_process(_delta):
	movement()

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel") :
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED :
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
			camera.mouse_follow = false
		else :
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
			camera.mouse_follow = true

	if Input.is_action_just_pressed("QUIT"):
		get_tree().quit

func movement():
	if Input.is_action_pressed("front") :
		var dir = camera.get_front_direction()
		apply_central_force(dir * speed)
	if Input.is_action_pressed("back") :
		var dir = camera.get_back_direction()
		apply_central_force(dir * speed)
	if Input.is_action_pressed("left") :
		var dir = camera.get_left_direction()
		apply_central_force(dir * speed)
	if Input.is_action_pressed("right") :
		var dir = camera.get_right_direction()
		apply_central_force(dir * speed)

extends RigidBody2D

@onready var color = $ColorRect

var player = 0
var speed = 350

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _rrr():
	if player == 2:
		color.color = "f5004f"

func _p1move():
	if Input.is_action_pressed("d"):
		linear_velocity.x = speed
	if Input.is_action_pressed("a"):
		linear_velocity.x = -speed
	if Input.is_action_pressed("s"):
		linear_velocity.y = speed
	if Input.is_action_pressed("w"):
		linear_velocity.y = -speed

func _p2move():
	if Input.is_action_pressed("r"):
		linear_velocity.x = speed
	if Input.is_action_pressed("l"):
		linear_velocity.x = -speed
	if Input.is_action_pressed("do"):
		linear_velocity.y = speed
	if Input.is_action_pressed("u"):
		linear_velocity.y = -speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	_rrr()
	if player == 1:
		_p1move()
	if player == 2:
		_p2move()
	

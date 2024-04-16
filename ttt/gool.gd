extends Marker2D

@onready var color = $g/ColorRect

var player = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _rrr():
	if player == 2:
		color.color = "f5004f"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_rrr()


func _on_g_area_entered(area):
	if area.get_name() == "ball_area":
		if player == 1:
			Auto.p2score += 1
		if player == 2:
			Auto.p1score += 1
		get_tree().reload_current_scene()

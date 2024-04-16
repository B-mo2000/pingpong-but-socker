extends Node2D

@onready var player1 = $player1
@onready var player2 = $player2
@onready var score = $score
@onready var gool1 = $gool
@onready var gool2 = $gool2

# Called when the node enters the scene tree for the first time.
func _ready():
	player1.player = 1
	player2.player = 2
	gool1.player = 1
	gool2.player = 2

func _score():
	score.text = str(Auto.p1score , "                     " , Auto.p2score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_score()

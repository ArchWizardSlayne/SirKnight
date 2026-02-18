extends Node

@export var score = 0
@onready var label_score: Label = $"../Player/Camera2D/Label_Score"
@onready var goal: Area2D = $"../Goal"




func add_point():
	score += 1
	label_score.text = str(score)
	if score == 10:
		goal.monitoring = true
	else:
		goal.monitoring = false
		
	

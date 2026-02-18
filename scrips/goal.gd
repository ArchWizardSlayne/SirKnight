extends Area2D

@onready var timer: Timer = $Timer




func _on_body_entered(_body):
	Engine.time_scale = 0.25
	timer.start()
	
func _on_timer_timeout():
	var current_scene_path = get_tree().current_scene.scene_file_path
	Engine.time_scale = 1
	if current_scene_path == "res://scenes/level_1.tscn":
		get_tree().change_scene_to_file("res://scenes/level_2.tscn")
	elif current_scene_path == "res://scenes/level_2.tscn":
		get_tree().change_scene_to_file("res://scenes/level_3.tscn")
	elif current_scene_path == "res://scenes/level_3.tscn":
		get_tree().change_scene_to_file("res://scenes/level_4.tscn")
	elif current_scene_path == "res://scenes/level_4.tscn":
		get_tree().change_scene_to_file("res://scenes/level_5.tscn")
		
		

extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var game_master: Node = %GameMaster






func _on_body_entered(_body):
	game_master.add_point()
	animation_player.play("Pickup")

extends Node2D






func _on_Level2_Portal_Entered(body):
	get_tree().change_scene("res://Scenes/Level3.tscn")

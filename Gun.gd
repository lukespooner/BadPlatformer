extends Node2D

var timeout = false

func _process(delta):
	look_at($"../../Player".global_position)
	if $Sprite/RayCast2D.is_colliding():
		fire()
	rotation_degrees = rotation_degrees - 90


func fire():
	if not timeout:
		$Sprite/RayCast2D.add_child(load("res://Scenes/Bullet.tscn").instance())
		$Sprite/Timer.start()
		timeout = true


func _on_Timer_timeout():
	timeout = false

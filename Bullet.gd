extends Node2D

const SPEED = 200


func ready():
	set_as_toplevel(true)
	global_position.x = get_parent().global_position.x


func _process(delta):
	position.y += SPEED * delta
	manage_collision()

func manage_collision():
	var collider = $Area2D.get_overlapping_bodies()
	for object in collider:
		if object.name == "Player":
			get_tree().reload_current_scene()
		else:
			queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()




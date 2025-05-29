extends RigidBody2D

func _physics():
	var colbod = get_colliding_bodies()
	if colbod.size > 0 or colbod:
		print("lol")

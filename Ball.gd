extends RigidBody2D

var speed = 300
var initial_direction = Vector2(1, 0).rotated(randf() * PI / 4)  # Random angle

func _ready():
	# Set the initial linear velocity
	linear_velocity = initial_direction * speed

func _integrate_forces(state):
	# Reset position if it goes off screen (optional)
	if global_position.x < 0 or global_position.x > get_viewport().size.x:
		reset_ball()

func reset_ball():
	global_position = get_viewport().size / 2
	linear_velocity = initial_direction * speed

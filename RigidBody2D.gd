extends RigidBody2D

var speed = 400  # Ball speed
var direction = Vector2(-1, 0)  # Initial direction

func _ready():
	direction = Vector2(randf_range(-1, 1), randf_range(-0.5, 0.5)).normalized()
	set_linear_velocity(direction * speed)

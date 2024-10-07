extends CharacterBody2D

var speed = 400  # Paddle movement speed
var input_direction = Vector2.ZERO  # Holds the direction

func _process(delta):
	input_direction = Vector2.ZERO  # Reset direction each frame

	# Check for input and set direction
	if Input.is_action_pressed("ui_up"):
		input_direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		input_direction.y += 1

	# Move the paddle using move_and_collide
	move_and_collide(input_direction * speed * delta)

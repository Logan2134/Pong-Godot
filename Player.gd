extends CharacterBody2D

var speed = 400  # Paddle movement speed

func _process(delta):
	var input_direction = Vector2.ZERO  # Initialize input direction

	# Check input for paddle movement
	if Input.is_action_pressed("ui_up"):
		input_direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		input_direction.y += 1

	# Move the paddle based on input
	var movement = input_direction * speed * delta
	move_and_collide(movement)

extends StaticBody2D

var speed = 400  # Paddle movement speed

func _process(delta):
	var input_direction = 0
	
	if Input.is_action_pressed("ui_up"):
		input_direction -= 1
	if Input.is_action_pressed("ui_down"):
		input_direction += 1

	position.y += input_direction * speed * delta

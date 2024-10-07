extends CharacterBody2D

var speed = 200  # AI paddle speed
var ball_position = Vector2.ZERO  # This will track the ball's position

func _process(delta):
	ball_position = get_node("../Ball").global_position

	# Move AI paddle towards the ball
	if ball_position.y > global_position.y:
		move_and_collide(Vector2(0, 1) * speed * delta)
	elif ball_position.y < global_position.y:
		move_and_collide(Vector2(0, -1) * speed * delta)

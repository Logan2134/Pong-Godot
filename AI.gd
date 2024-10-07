extends CharacterBody2D

var speed = 400  # Paddle speed
var is_ai = false  # Change this to false for player control

func _process(delta):
	if is_ai:
		# AI Logic
		var ball_position = get_node("../Ball").global_position
		
		# Move AI paddle towards the ball
		if ball_position.y > global_position.y:
			move_and_collide(Vector2(0, 1) * speed * delta)
		elif ball_position.y < global_position.y:
			move_and_collide(Vector2(0, -1) * speed * delta)
	else:
		# Player-controlled movement
		if Input.is_action_pressed("ui_accept"):
			move_and_collide(Vector2(0, -1) * speed * delta)  # Move up
		elif Input.is_action_pressed("ui_cancel"):
			move_and_collide(Vector2(0, 1) * speed * delta)  # Move down

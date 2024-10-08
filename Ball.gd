extends RigidBody2D

var speed = 350  # Ball speed

var initial_direction: Vector2

func _ready():
	# Generate a random angle between -PI/4 and PI/4 (to avoid straight vertical)
	var angle = randf_range(-PI / 4, PI / 4)
	
	initial_direction = Vector2(cos(angle), sin(angle)).normalized()
	linear_velocity = initial_direction * speed

func _on_Ball_body_entered(body):

	# Calculate the normal vector from the collision point
	var normal = (global_position - body.global_position).normalized()

	# Reflect the velocity using the normal
	linear_velocity = linear_velocity.bounce(normal).normalized() * speed


	# Add slight randomness to the Y component of the linear velocity
	linear_velocity.y += randf_range(-25,50)  # Change the range as needed to control variability

func _process(delta):
	# Optionally, check for any additional game logic
	if linear_velocity.length() < 100:  # Adjust this threshold as needed
		reverse_direction()  # Call function to reverse the ball's direction

func reverse_direction():
	# Reverse the current velocity direction
	linear_velocity = -linear_velocity.normalized() * speed

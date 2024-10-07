extends StaticBody2D

var ball = null
var speed = 300  # Slower than the player

func _ready():
	ball = get_node("/root/PongGame/Circle")  # Reference the ball in the scene

func _process(delta):
	if ball.position.y > position.y:
		position.y += speed * delta
	elif ball.position.y < position.y:
		position.y -= speed * delta

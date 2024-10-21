extends CharacterBody2D



const SPEED = 500.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	rotate(rot)
	
	var f = Input.get_axis("move_forwards", "move_backwards")

	var vel = transform.y * f * SPEED
	print(transform.y)
	velocity = vel

	move_and_slide()

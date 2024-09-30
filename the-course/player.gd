extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D

const SPEED = 700.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 300

func _physics_process(delta: float) -> void:
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)
	
	
	var rot = deg_to_rad(r * TURN_RATE * delta)  
	
	var f = Input.get_axis("move_backwards", "move_forwards")
	
	var vel = transform.y * f * SPEED
	
	velocity = vel
	
	if Input.is_action_pressed("fire"):
		var b = bullet_scene.instantiate()
		b.global_postion = bullet_spawn_point.global_position
		add_child(b)
	
	rotate(rot)
	move_and_slide()

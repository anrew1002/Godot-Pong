extends CharacterBody2D
class_name Ball

var win_size : Vector2
const START_SPEED: int = 400 
const ACCEL: int = 50 
var speed: int
var dir: Vector2 = Vector2(0,0)
const MAX_Y_VECTOR: float = 0.6


func _ready() -> void:
	win_size = get_viewport_rect().size

func reset() -> void:
	position.x = - 500
	position.y = win_size.y / 2
	speed = 0

func new_ball() -> void: 
	position.x = win_size.x / 2
	position.y = randi_range(200, win_size.y - 200)
	speed = START_SPEED
	dir = random_direction()

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(dir * speed * delta)
	var collider
	if collision:
		collider = collision.get_collider()
		if collider == $"../Player" or collider == $"../Enemy":
			speed += ACCEL
			dir = new_direction(collider)
		else: 	
			dir = dir.bounce(collision.get_normal())
	# print(global_position)


func random_direction() -> Vector2:
	var new_dir := Vector2()
	new_dir.x = [1,-1].pick_random()
	new_dir.y = randf_range(-1,1)
	return new_dir.normalized()

func new_direction(collider):
	var ball_y = position.y
	var pad_y = collider.position.y
	var dist = ball_y - pad_y
	var new_dir = Vector2()

	if dir.x > 0:
		new_dir.x = -1
	else:
		new_dir.x = 1
	new_dir.y = (dist / (collider.p_height / 2)) * MAX_Y_VECTOR
	return new_dir.normalized()

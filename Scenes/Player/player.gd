extends StaticBody2D

var ball_pos: Vector2
var dist: int
var move_by: int 

var aied: bool = true

var win_height: int
var p_height: int

func _ready() -> void:
	win_height = get_viewport_rect().size.y
	p_height = $ColorRect.get_size().y

func _process(delta: float) -> void:
	if !aied:
		if Input.is_action_pressed("ui_up"):
			position.y -= get_parent().PADDLE_SPEED * delta
		elif Input.is_action_pressed("ui_down"):
			position.y += get_parent().PADDLE_SPEED * delta

		position.y = clamp(position.y, p_height / 2, win_height  - p_height / 2)
	else:
		ball_pos = $"../Ball".position
		dist = position.y - ball_pos.y

		if abs(dist) > get_parent().PADDLE_SPEED * delta:
			move_by = get_parent().PADDLE_SPEED * delta * (dist / abs(dist))
		else:
			move_by = dist
		position.y -= move_by
		position.y = clamp(position.y, p_height / 2, win_height  - p_height / 2)
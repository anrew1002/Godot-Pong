extends Node2D

var score := [0,0]
const PADDLE_SPEED := 180
var win_size: Vector2

func _on_timer_timeout() -> void:
	$Ball.new_ball()

func _ready() -> void:
	win_size = get_viewport_rect().size

func _on_right_collision_body_entered(_body:Node2D) -> void:
	score[0] += 1
	if score[0] >= 2 and !$Player.aied:
		$Menu.visible = true
		$Menu/CenterContainer/ColorRect2/VBoxContainer/RichTextLabel.visible = true
		$Menu/CenterContainer/ColorRect2/VBoxContainer/RichTextLabel.text = "Victory"
		$Player.aied = true
	$HUD/PlayerScore.text = str(score[0])
	$Timer.start()

func _on_left_collision_body_entered(_body:Node2D) -> void:
	score[1] += 1
	if score[1] >= 2 and !$Player.aied:
		$Menu.visible = true
		$Menu/CenterContainer/ColorRect2/VBoxContainer/RichTextLabel.visible = true
		$Menu/CenterContainer/ColorRect2/VBoxContainer/RichTextLabel.text = "Fail"
		$Player.aied = true
	$HUD/OpScore.text = str(score[1])
	$Timer.start()

func _on_play_pressed() -> void:
	print("pressed")
	$Player.aied = false
	$Menu.visible = false
	$Ball.reset()
	score = [0,0]
	$HUD.resetHud()
	$Timer.start()
	



func _on_exit_pressed() -> void:
	get_tree().quit()

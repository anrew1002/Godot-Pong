extends Node2D

var score := [0,0]
const PADDLE_SPEED := 180

func _on_timer_timeout() -> void:
    $Ball.new_ball()



func _on_right_collision_body_entered(body:Node2D) -> void:
    score[0] += 1
    $HUD/PlayerScore.text = str(score[0])
    $Timer.start()

func _on_left_collision_body_entered(body:Node2D) -> void:
    score[1] += 1
    $HUD/OpScore.text = str(score[1])
    $Timer.start()
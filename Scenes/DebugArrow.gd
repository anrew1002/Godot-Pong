@tool
class_name VectorTool

extends Node2D

# @onready var parent: Ball = get_parent()

# @export var hideInGame: bool = false
# # @export var property_name: String
# # var property_name := "dir"
# @export var thickness: int
# @export_color_no_alpha var color: Color
# # @onready var vector: Vector2 = parent.get(property_name)
# @onready var vector: Vector2 = parent.dir
# @onready var vectorFrom: Vector2 = parent.global_position
# # export var vector = Vector2(100, 100) 
# # export var color = Color(255, 0, 0)
# # export var thickness: float = 1.0

# # var vectorFrom = Vector2(0, 0) setget setfromvector

# const arrowAngle: float = PI / 6.0
# const arrowToVecRatio: float = 5.0

# func _ready():
# 	print(parent.get_property_list())
# 	global_position = get_parent().global_position
# # func setfromvector(newV: Vector2) -> void:
# #     vectorFrom = newV
# #     update()    

# # func setvector(newV: Vector2) -> void:
# #     vector = newV
# #     update()

# # func setcolor(newC: Color) -> void:
# #     color = newC
# #     update()
# func _process(_delta: float) -> void:
# 	vector = parent.dir
# 	global_position = get_parent().global_position
# 	vector = Vector2(10,20)
# 	# vectorFrom = get_parent().global_position
# 	# vectorFrom
# 	print(global_position)
# 	queue_redraw()

# func _draw() -> void:
# 	if (Engine.is_editor_hint() or !hideInGame) and vector:
# 		var arrowLength: float = vector.length() / arrowToVecRatio

# 		draw_line(Vector2(0,0), vector, color, 3)
# 		var lineEnd = ((arrowLength) / vector.length()) * vector
# 		draw_line(vector, vector - lineEnd.rotated(-arrowAngle), color, thickness)
# 		draw_line(vector, vector - lineEnd.rotated(arrowAngle), color, thickness)

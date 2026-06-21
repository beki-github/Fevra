extends Node2D
class_name node_class


@export var value:float  
@export var index:int
@export var custom_color:Color

func create_node(node_value:float,node_index:int,node_position:Vector2,node_color:Color)->void:
	set_value(node_value)
	set_index(node_index)
	set_postion(node_position)
	set_color(node_color)
	get_node("value").text=str(value)
	get_node("ColorRect").material.set_shader_parameter("border_color",custom_color)

func update_node()->void:
	get_node("value").text=str(value)
	get_node("ColorRect").material.set_shader_parameter("border_color",custom_color)
	global_position=position
	

func set_color(new_color: Color):
	custom_color=new_color

func set_postion(new_postion: Vector2):
	global_position=new_postion
	

func set_value(new_value:float):
	value=new_value

func set_index(new_index:int):
	index=new_index
	
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

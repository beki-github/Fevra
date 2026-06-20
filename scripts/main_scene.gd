extends Node2D
var node_scene=preload("res://scenes/node.tscn")
var array=[]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(0,10):
		var node=node_scene.instantiate()
		node.get_node("value").text = str(i)
		node.global_position = Vector2(50*i, 0)
		add_child(node)
		array.append(node)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

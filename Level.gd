extends Node

func _ready():
	pass


func _process(delta):
	get_node("FONDO 3").scroll_base_offset += Vector2(-1,0) * 16 * delta
	get_node("FONDO 2").scroll_base_offset += Vector2(-2,0) * 48 * delta
	get_node("FONDO 1").scroll_base_offset += Vector2(-3,0) * 96 * delta
	get_node("CAMINO").scroll_base_offset += Vector2(-4,0) * 100 * delta

 

extends KinematicBody2D
export (int) var velocidad 
onready var movimiento : Vector2
const GRAVEDAD = Vector2(0,5)
const JUMP_HEIGHT = -450
const SUELO = Vector2(0,-1)

func _process(delta):
	_is_on_floor(delta)
	movimiento.x = velocidad


func _is_on_floor(delta):
	movimiento += GRAVEDAD * 200 * delta
	$AnimatedSprite.play()
	if Input.is_action_just_pressed("space"):
		movimiento.y += JUMP_HEIGHT
	
	position += movimiento * delta
	
	movimiento = move_and_slide(movimiento, SUELO)

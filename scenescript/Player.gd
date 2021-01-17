extends KinematicBody2D

class_name Player

export var speed : float = 600

onready var joystick : Joystick = get_node("../../Joystick")

func _physics_process(delta: float) -> void:
	_move(delta)

func _move(delta: float) -> void:
	if joystick and joystick.is_working:
		joystick.output.y = 0
		move_and_slide(joystick.output * speed)
	if joystick.output.x != 0:
		$AnimationPlayer.play("walk")
	if joystick.output.x > 0:
		$Sprite.flip_h = false
	elif joystick.output.x < 0:
		$Sprite.flip_h = true

extends Node2D

var fot = preload("res://scenescript/Fot.tscn")
var timer = 0
var timer_limit = 64

func _physics_process(delta):
	timer += 1
	if timer > timer_limit:
		timer -= timer_limit
		randomize()
		var food =  fot.instance()
		food.position = Vector2(rand_range(0, get_viewport_rect().size.x), -30)
		add_child(food)

# Called when the node enters the scene tree for the first time.
func _ready():
	$Anim.play("switch")
	$PMenu/Paused.set_text(tr("string_paused"))

func _input(event):
	# Score
	var score = 0
	$Score.text = str(score)

func _on_PButton_pressed():
	$BPress.play()
	get_tree().paused = true
	$PMenu.visible = true

func _on_CButton_pressed():
	$BPress.play()
	get_tree().paused = false
	$PMenu.visible = false

func _on_SButton_pressed():
	$BPress.play()

func _on_MButton_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://scenescript/Menu.tscn")

func _on_HButton_pressed():
	pass # Replace with function body.

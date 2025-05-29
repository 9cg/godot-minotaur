extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$BPress.play()
	$TitleAnim.play("tt1")
	$TitleAnim/Title.set_text(tr("string_title"))
	$Options/Options.set_text(tr("string_options"))
	$Language/Language.set_text(tr("string_language"))
	$Confirm/Quit.set_text(tr("string_quit"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_CButton_pressed():
	$BPress.play()
	get_tree().change_scene("res://scenescript/Game.tscn")

func _on_SButton_pressed():
	$BPress.play()

func _on_QButton_pressed():
	$BPress.play()
	$Confirm.visible = true
	if $Options.visible == true or $Language.visible == true:
		$Options.visible = false
		$Language.visible = false

func _on_QButtonNO_pressed():
	$BPress.play()
	$Confirm.visible = false

func _on_QButtonYES_pressed():
	get_tree().quit()

func _on_OButton_pressed():
	$BPress.play()
	$Options.visible = true
	if $Confirm.visible == true or $Language.visible == true:
		$Confirm.visible = false
		$Language.visible = false

func _on_TButton_pressed():
	$BPress.play()
	$Language.visible = true
	if $Confirm.visible == true or $Options.visible == true:
		$Confirm.visible = false
		$Options.visible = false

func _on_TButtonNO_pressed():
	$BPress.play()
	$Language.visible = false

func _on_UK_pressed():
	TranslationServer.set_locale("en")
	get_tree().reload_current_scene()

func _on_DE_pressed():
	TranslationServer.set_locale("de")
	get_tree().reload_current_scene()

func _on_TR_pressed():
	TranslationServer.set_locale("tr")
	get_tree().reload_current_scene()

func _on_AZ_pressed():
	TranslationServer.set_locale("az_AZ")
	get_tree().reload_current_scene()

func _on_Digital_pressed():
	$BPress.play()
	var analog = false

func _on_Analog_pressed():
	$BPress.play()
	var analog = true


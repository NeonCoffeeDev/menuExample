extends Control

@export var cursorNumber = 0
@export var CursorObj = ColorRect

@export var option1 = ColorRect
@export var option2 = ColorRect
@export var option3 = ColorRect
# Called when the node enters the scene tree for the first time.
func _ready():
	$menuAnimation.play("start_menu")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_released("up"):
		if cursorNumber >0:
			cursorNumber -= 1

	if Input.is_action_just_released("down"):
		if cursorNumber <2:
			cursorNumber += 1

	if cursorNumber ==0:
		CursorObj.position= option1.position
	if cursorNumber ==1:
		CursorObj.position= option2.position
	if cursorNumber ==2:
		CursorObj.position= option3.position

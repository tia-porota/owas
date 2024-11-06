extends Node2D


signal armValue(value)
signal valueTorso(value)
var leftValue = 0
var rightValue = 0
@onready var torso = get_node("Tor")
@onready var slider = get_node("HSlider")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_h_slider_value_changed(value: float) -> void:
	
	torso.set_global_rotation_degrees(value);
	torso.skew = value/25
	if value>=0 && value<=5:
		valueTorso.emit(1)
	elif value<=10:
		valueTorso.emit(2)
	elif value<=15:
		valueTorso.emit(3)
	else:
		valueTorso.emit(4)


func _on_button_pressed() -> void:
	slider.visible = not slider.visible

func calcArm(left,right):
	if (left==0&&right==0):
		armValue.emit(1)
	elif (left==1&&right==1):
		armValue.emit(2)
	else:
		armValue.emit(3)

func _on_arm_right_right_value(value) -> void:
	calcArm(leftValue,value)


func _on_arm_left_right_value(value) -> void:
	calcArm(value,rightValue)

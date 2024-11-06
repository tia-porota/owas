extends Node2D


signal fullValue(back,arm,leg,weight)

var leftValue = 0
var rightValue = 0
var legValue = 1

var torsoValue = 1
var armValue = 1
var weightValue = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func calcLegs(left, right):
	if (left==1&&right==1):
		legValue=1
	elif (left==0&&right==0):
		legValue=2
	elif (left==0&&right==2)||(left==2&&right==0):
		legValue=3
	elif (left==2&&right==2):
		legValue=6
	else:
		legValue=5
	fullValue.emit(torsoValue,armValue,legValue,weightValue)	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_left_leg_l_leg(value) -> void:
	calcLegs(value,rightValue)


func _on_right_leg_l_leg(value) -> void:
	calcLegs(leftValue,value)


func _on_torso_arm_value(value: Variant) -> void:
	armValue = value
	fullValue.emit(torsoValue,armValue,legValue,weightValue)


func _on_torso_value_torso(value: Variant) -> void:
	torsoValue = value
	fullValue.emit(torsoValue,armValue,legValue,weightValue)


func _on_label_s_weight(value: Variant) -> void:
	weightValue = value
	fullValue.emit(torsoValue,armValue,legValue,weightValue)

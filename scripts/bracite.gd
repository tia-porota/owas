extends Node2D
signal rightValue
var armValue
@onready var arm = get_node("Arm")
@onready var slider = get_node("VSlider")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
	
	
func _process(delta: float) -> void:
	pass


func _on_v_slider_value_changed(value: float) -> void:
	if value<=90:
		rightValue.emit(0)	
	else:
		rightValue.emit(1)
	
	arm.set_global_rotation_degrees(-value)
	

func _on_button_pressed() -> void:
	slider.visible = not slider.visible

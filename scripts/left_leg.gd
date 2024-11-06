extends Node2D
signal lLeg;
@onready var leg = get_node("Leg")
@onready var texture
@onready var slider = get_node("VSlider")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_v_slider_value_changed(value: float) -> void:
	
	if value==0:
		texture = load("res://res/leg.png")
		
	elif value==1:
		texture = load("res://res/leg2.png")
	else:
		texture = load("res://res/leg3.png")
	#texture = load("res://res/leg2.png")
	lLeg.emit(value)
	leg.texture = texture
	


func _on_button_pressed() -> void:
	slider.visible = not slider.visible

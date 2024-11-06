extends Label

var wValue
signal sWeight(value)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_h_slider_value_changed(value: float) -> void:
	text=str(value)+"kg"
	if value<10:
		sWeight.emit(1)
	elif value<20:
		sWeight.emit(2)
	else:
		sWeight.emit(3)
		text=">"+text

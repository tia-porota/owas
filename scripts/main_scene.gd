extends Node2D

var owas_table = [
	[
		[[1, 1, 1], [1, 1, 1], [1, 1, 1], [2, 2, 2], [2, 2, 2], [1, 1, 1], [1, 1, 1]],
		[[1, 1, 1], [1, 1, 1], [1, 1, 1], [2, 2, 2], [2, 2, 2], [1, 1, 1], [1, 1, 1]],
		[[1, 1, 1], [1, 1, 1], [1, 1, 1], [2, 2, 3], [2, 2, 3], [1, 1, 1], [1, 1, 2]]
	],
	[
		[[2, 2, 3], [2, 2, 3], [2, 2, 3], [3, 3, 3], [3, 3, 3], [2, 2, 2], [2, 3, 3]],
		[[2, 2, 3], [2, 2, 3], [2, 3, 3], [3, 4, 4], [3, 4, 3], [3, 3, 4], [2, 3, 4]],
		[[4, 4, 4], [4, 4, 4], [4, 4, 4], [4, 4, 4], [4, 4, 4], [4, 4, 4], [4, 4, 4]]
	],
	[
		[[1, 1, 1], [1, 1, 1], [1, 1, 2], [3, 3, 3], [4, 4, 4], [1, 1, 1], [1, 1, 1]],
		[[2, 2, 3], [1, 1, 1], [1, 1, 2], [4, 4, 4], [4, 4, 4], [3, 3, 3], [1, 1, 1]],
		[[2, 2, 3], [1, 1, 1], [2, 3, 3], [4, 4, 4], [4, 4, 4], [4, 4, 4], [1, 1, 1]]
	],
	[
		[[2, 3, 3], [2, 2, 3], [2, 2, 3], [4, 4, 4], [4, 4, 4], [4, 4, 4], [2, 3, 4]],
		[[3, 3, 4], [2, 3, 4], [3, 3, 4], [4, 4, 4], [4, 4, 4], [4, 4, 4], [2, 3, 4]],
		[[4, 4, 4], [2, 3, 4], [3, 3, 4], [4, 4, 4], [4, 4, 4], [4, 4, 4], [2, 3, 4]]
	]
]



var fullValue=1

@onready var label = get_node("Label")
@onready var desc = get_node("desc")
func _ready() -> void:
	pass 



func _process(delta: float) -> void:
	pass




func _on_fullbody_full_value(back: Variant, arm: Variant, leg: Variant, weight: Variant) -> void:
	fullValue=owas_table[back - 1][arm - 1][leg - 1][weight - 1]
	label.text=str(fullValue)
	if (fullValue==1):
		desc.text="Postura normal y natural sin efectos dañinos en el sistema músculo esquelético.

No requiere acción."
	elif (fullValue==2):
		desc.text="Postura con posibilidad de causar daño al sistema músculo-esquelético.

Se requieren acciones correctivas en un futuro cercano."
	elif (fullValue==3):
		desc.text="Postura con efectos dañinos sobre el sistema músculo-esquelético.
		
Se requieren acciones correctivas lo antes posible."
	else:
		desc.text="La carga causada por esta postura tiene efectos sumamente dañinos sobre el sistema músculo-esquelético.

Se requiere tomar acciones correctivas inmediatamente."
	

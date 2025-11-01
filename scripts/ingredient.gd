class_name Ingredient
extends Resource

@export var label: String
@export var boiling_point: int
@export var weight: int
@export var color_vector: Vector5Color

func _init(p_label = "Unnamed", p_boiling_point = null, p_weight = null, p_color_vector = null):
	self.boiling_point = p_boiling_point
	self.label = p_label
	self.weight = p_weight
	self.color_vector = p_color_vector

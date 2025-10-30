class_name Ingredient
extends Resource

@export var name: String
@export var properties: Array[Ingredient_Property]

func _init(p_name = "Unnamed Ingredient", p_properties = []):
	self.name = p_name
	self.properties = p_properties

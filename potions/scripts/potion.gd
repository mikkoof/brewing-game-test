class_name Potion
extends Resource



@export var name: String
@export var ingredients: Array[Ingredient]
@export var texture: Texture2D

func _init(p_name = "Unnamed Potion", p_ingredients = [], p_texture = null):
  self.name = p_name
  self.ingredients = p_ingredients
  self.texture = p_texture

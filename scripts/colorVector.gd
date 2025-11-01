class_name Vector5Color
extends Resource
# amounts 0 to 100
@export var red: int 
@export var yellow: int
@export var blue: int
@export var black: int
@export var white: int


func get_as_simple_fractions() -> Dictionary:
  var total = red + yellow + blue + black + white
  if total == 0:
    return {
      "red": "0/1",
      "yellow": "0/1", 
      "blue": "0/1",
      "black": "0/1",
      "white": "0/1"
    }
  
  return {
    "red": str(red) + "/" + str(total),
    "yellow": str(yellow) + "/" + str(total),
    "blue": str(blue) + "/" + str(total),
    "black": str(black) + "/" + str(total),
    "white": str(white) + "/" + str(total)
  }

func _init(p_red = 0, p_yellow = 0, p_blue = 0, p_black = 0, p_white = 0):
  red = p_red
  yellow = p_yellow
  blue = p_blue
  black = p_black
  white = p_white

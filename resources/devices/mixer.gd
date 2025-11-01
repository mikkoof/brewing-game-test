class_name MixerLogic
extends Resource

func mix_vials(vial1: Vial, vial2: Vial) -> Array[Vial]:
	var new_red = vial1.colorVector.red + vial2.colorVector.red
	var new_yellow = vial1.colorVector.yellow + vial2.colorVector.yellow
	var new_blue = vial1.colorVector.blue + vial2.colorVector.blue
	var new_black = vial1.colorVector.black + vial2.colorVector.black
	var new_white = vial1.colorVector.white + vial2.colorVector.white
	
	var new_color_vector = Vector5Color.new(new_red, new_yellow, new_blue, new_black, new_white)
	var new_vial1 = Vial.new(new_color_vector)
	var new_vial2 = Vial.new(new_color_vector)

	return [new_vial1, new_vial2]
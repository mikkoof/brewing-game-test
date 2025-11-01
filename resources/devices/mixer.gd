class_name MixerLogic
extends Resource

@export var vials: Array[Vial]

func add_vial(vial: Vial) -> void:
	if vial:
		vials.append(vial)

func mix() -> Array[Vial]:
	var mixed_colors = Vector5Color.new()
	for vial in vials:
		mixed_colors.red += vial.colorVector.red
		mixed_colors.yellow += vial.colorVector.yellow
		mixed_colors.blue += vial.colorVector.blue
		mixed_colors.black += vial.colorVector.black
		mixed_colors.white += vial.colorVector.white

	var averaged_colors = Vector5Color.new()
	var vial_count = vials.size()
	if vial_count > 0:
		averaged_colors.red = mixed_colors.red / vial_count
		averaged_colors.yellow = mixed_colors.yellow / vial_count
		averaged_colors.blue = mixed_colors.blue / vial_count
		averaged_colors.black = mixed_colors.black / vial_count
		averaged_colors.white = mixed_colors.white / vial_count

	var result_vials: Array[Vial] = []
	for  i in range(vial_count):
		var new_vial = Vial.new(averaged_colors)
		result_vials.append(new_vial)

	vials.clear()
	return result_vials

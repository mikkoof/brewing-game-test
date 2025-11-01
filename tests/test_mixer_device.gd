extends GutTest

var mixer_logic = preload("res://resources/devices/mixer.gd")
var Vector5Color = preload("res://scripts/colorVector.gd")

func test_mixer_mixes_two_vials():
	var mixer_device = Device.new("Mixer", 5, mixer_logic)
	var red_vial = Vial.new(Vector5Color.new(100, 0, 0, 0, 0))
	var yellow_vial = Vial.new(Vector5Color.new(0, 100, 0, 0, 0))

	var mixer_instance = mixer_device.device_script.new()

	mixer_instance.add_vial(red_vial)
	mixer_instance.add_vial(yellow_vial)

	var result_vials = mixer_instance.mix()
	assert_eq(result_vials.size(), 2)
	assert_eq(result_vials[0].colorVector, Vector5Color.new(50, 50, 0, 0, 0))
	assert_eq(result_vials[1].colorVector, Vector5Color.new(50, 50, 0, 0, 0))

class_name Device
extends Resource

@export var label: String
@export var duration: int
# Field to place the script which defines the device behavior
@export var device_script: Script

func _init(p_label = "Unnamed", p_duration = 0, p_device_script = null):
	self.label = p_label
	self.duration = p_duration
	self.device_script = p_device_script
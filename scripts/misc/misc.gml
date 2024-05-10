function create_fly_message(xx, yy, message, settings = {}) {
	var n = instance_create_depth(xx, yy, 0, obj_fly_message)
	n.message = message
	n.fly_time = settings[$ "fly_time"] ?? 60
	n.fly_speed = settings[$ "fly_speed"] ?? 1
	n.font = settings[$ "font"] ?? fnt_default
	n.gui = settings[$ "gui"] ?? false
}

function rand_item(arr) {
	return arr[irandom(array_length(arr) - 1)]	
}
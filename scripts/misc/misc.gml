function create_fly_message(xx, yy, message, fly_time = 60, fly_speed = 1) {
	var n = instance_create_depth(xx, yy, 0, obj_fly_message)
	n.message = message
	n.fly_time = fly_time
	n.fly_speed = fly_speed
}
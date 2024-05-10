x_offset += (x_offset_target - x_offset) / 8;
x_offset = ceil(x_offset);

if (global.e_pressed && is_active) {
	is_active = false;
	global.pause--
	x_offset_target = ww + 1000;
}

if (!is_active && x_offset >= x_offset_target) {
	instance_destroy(self);
}

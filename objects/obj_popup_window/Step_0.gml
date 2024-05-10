x_offset += (x_offset_target - x_offset) / 8;
x_offset = round(x_offset);

if (global.e_pressed) {
	is_active = false;
	x_offset_target = ww + 1000;
}

if (!is_active && x_offset_target == x_offset) {
	instance_destroy(self);
}

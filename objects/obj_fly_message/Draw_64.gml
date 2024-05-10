if (!gui)
	return

draw_set_halign(fa_center)
draw_set_font(font)

draw_text_color(x, y, message, c_white, c_white, c_white, c_white, 1 - cur_time / fly_time)
y -= fly_speed

if (cur_time > fly_time) 
	instance_destroy(self)

cur_time++
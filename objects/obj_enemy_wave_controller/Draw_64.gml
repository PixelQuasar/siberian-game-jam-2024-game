/// @description 

var xx_start = x_start - (waves_amount - 1) * (x_margin + x_flag_size) / 2

for (var i = 1; i <= waves_amount; i++) {
	var flag = (cur_wave + is_wave_cleared) > i
	if (spawn_boss && i == waves_amount)
		flag = 2
	var xx = xx_start + (x_flag_size + x_margin) * (i - 1)
	var yy = y_start
	draw_sprite_ext(spr_wave_flag, flag, xx, yy, gui_scale, gui_scale, 0, c_white, 1)
}
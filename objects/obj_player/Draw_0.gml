//draw_self();

if global.roll {
	if global.movedir == 2 || global.movedir == 3
		|| global.movedir == 4 {
			draw_sprite(spr_dm_roll_u,roll_frame,x,y);
		} else {
			draw_sprite(spr_dm_roll_d,roll_frame,x,y);
		}
	image_index = 1	
} else {
	if global.move {
		if global.movedir == 2 || global.movedir == 3
		|| global.movedir == 4 {
			draw_sprite(spr_dm_run_u,run_frame,x,y);
		} else {
			draw_sprite(spr_dm_run_d,run_frame,x,y);
		}
	} else {
		if global.movedir == 2 || global.movedir == 3
		|| global.movedir == 4 {
			draw_sprite(spr_dm_u,0,x,y);
		} else {
			draw_sprite(spr_dm_d,0,x,y);
		}
	}
	image_index = 0	
}

//draw_self();

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

	if (sin(1 / global.immune_to_damage_timer * 500) < 0) {
		gpu_set_fog(true, c_white, 0, 1000)
		draw_self()
		gpu_set_fog(false, c_white,0,1000)}
else {
	draw_self();
}

//if global.roll {
//    draw_sprite(spr_dm_roll_d,roll_frame,x,y);
//	  image_index = 1	
//} else {
//	  draw_sprite(spr_dm_d,0,x,y);
//	  image_index = 0	
//}

draw_sprite_ext(spr_health_bar, 0, x, y - 40, global.hp / global.max_hp, 1,0, 
				make_color_rgb(min(255, 510 * (1 - global.hp / global.max_hp)), min(255, 510 * (global.hp / global.max_hp)), 0), 1)
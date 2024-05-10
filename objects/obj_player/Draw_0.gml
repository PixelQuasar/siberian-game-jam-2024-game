//draw_self();

if (sin(1 / global.immune_to_damage_timer * 500) < 0) {
		gpu_set_fog(true, c_white, 0, 1000)
		//draw_self()
		//gpu_set_fog(false, c_white,0,1000)
}
else {
	//draw_self();
}

if global.roll {
	gpu_set_fog(false, c_white,0,1000)
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
			if !attacking{
				draw_sprite(spr_dm_arm_run_u,run_frame,x,y);
			}
			gpu_set_fog(false, c_white,0,1000)
		} else if global.movedir == 6 || global.movedir == 7
		|| global.movedir == 8 {
			draw_sprite(spr_dm_run_d,run_frame,x,y);
			if !attacking{
				draw_sprite(spr_dm_arm_run_d,run_frame,x,y);
			}
			gpu_set_fog(false, c_white,0,1000)
		}else if global.movedir == 1 {
			draw_sprite_ext(spr_dm_run_r, run_frame, x, y, 1, 1, 0, c_white, 1 );
			draw_sprite_ext(spr_dm_arm_run_r, run_frame, x, y, 1, 1, 0, c_white, 1 );
			gpu_set_fog(false, c_white,0,1000)
		}else if global.movedir == 5 {
			draw_sprite_ext(spr_dm_run_r, run_frame, x, y, -1, 1, 0, c_white, 1 );
			draw_sprite_ext(spr_dm_arm_run_r, run_frame, x, y, -1, 1, 0, c_white, 1 );
			gpu_set_fog(false, c_white,0,1000)
		}
	} else {
		if global.movedir == 2 || global.movedir == 3
		|| global.movedir == 4 {
			draw_sprite(spr_dm_u,0,x,y);
			if !attacking{
				draw_sprite(spr_dm_arm_u,run_frame,x,y);
			}
			gpu_set_fog(false, c_white,0,1000)
		} else if global.movedir == 6 || global.movedir == 7
		|| global.movedir == 8 {
			draw_sprite(spr_dm_d,0,x,y);
			if !attacking{
				draw_sprite(spr_dm_arm_d,run_frame,x,y);
			}
			gpu_set_fog(false, c_white,0,1000)
		} else if global.movedir == 1 {
			draw_sprite_ext(spr_dm_r, run_frame, x, y, 1, 1, 0, c_white, 1 );
			draw_sprite_ext(spr_dm_arm_r, run_frame, x, y, 1, 1, 0, c_white, 1 );
			gpu_set_fog(false, c_white,0,1000)
		} else if global.movedir == 5 {
			draw_sprite_ext(spr_dm_r, run_frame, x, y, -1, 1, 0, c_white, 1 );
			draw_sprite_ext(spr_dm_arm_r, run_frame, x, y, -1, 1, 0, c_white, 1 );
			gpu_set_fog(false, c_white,0,1000)
		}
	}
	image_index = 0	
}

if !(sin(1 / global.immune_to_damage_timer * 500) < 0) {
		gpu_set_fog(false, c_white,0,1000)
}

//if global.roll {
//    draw_sprite(spr_dm_roll_d,roll_frame,x,y);
//	  image_index = 1	
//} else {
//	  draw_sprite(spr_dm_d,0,x,y);
//	  image_index = 0	
//}


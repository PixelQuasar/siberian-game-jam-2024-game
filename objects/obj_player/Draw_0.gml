//draw_self();

if global.roll {
	draw_sprite(spr_dm_roll_d,roll_frame,x,y);
	image_index = 1	
} else {
	draw_sprite(spr_dm_d,0,x,y);
	image_index = 0	
}

draw_sprite_ext(spr_health_bar, 0, x, y - 40, global.hp / global.max_hp, 1,0, 
				make_color_rgb(min(255, 510 * (1 - global.hp / global.max_hp)), min(255, 510 * (global.hp / global.max_hp)), 0), 1)
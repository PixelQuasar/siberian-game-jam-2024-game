//draw_self();

if global.roll {
	draw_sprite(spr_dm_roll_d,roll_frame,x,y);
	image_index = 1	
} else {
	draw_sprite(spr_dm_d,0,x,y);
	image_index = 0	
}
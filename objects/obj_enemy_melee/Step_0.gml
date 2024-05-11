
if (spd == 0) {
	sprite_index = spr_melee_idle;
} else {
	sprite_index = spr_melee_run;
}

if (dir < 90 || dir > 270) {
	image_xscale = 1;
} else {
	image_xscale = -1;
}
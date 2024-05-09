function death() {
	spd = 0;
	image_speed = 1;
	is_active = false;
}

function move () {
	spd = max(0, spd + acc);
	var _h_spd = lengthdir_x(spd, dir);
	var _v_spd = lengthdir_y(spd, dir);
	x += _h_spd;
	y += _v_spd;
	
	image_angle = dir;
}


if (!is_active) {
} else {
	if (!place_meeting(x, y, global.solid_objs)) {
		move();
	} else {
		death();
	}
	lifetime--;
	if (lifetime == 0) {
		death();
	}
}
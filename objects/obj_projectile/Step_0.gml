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

function ricochet() {
	spd = max(0, spd + acc);
	var _h_spd = lengthdir_x(spd, dir);
	var _v_spd = lengthdir_y(spd, dir);
	if (!place_meeting(x - _h_spd, y + _v_spd, global.solid_objs)) {
		_h_spd = -_h_spd
	} else if (!place_meeting(x + _h_spd, y - _v_spd, global.solid_objs)) {
		_v_spd = -_v_spd
	} else {
		_h_spd = -_h_spd
		_v_spd = -_v_spd
	}
	dir = point_direction(x, y, x + _h_spd, y + _v_spd);
	x += _h_spd;
	y += _v_spd;
	
	image_angle = dir;
}

if (global.pause)
	return

if (!is_active) {
} else {
	if (!place_meeting(x, y, global.solid_objs)) {
		move();
	} else {
		if (ricochet_amount) {
			ricochet()
			ricochet_amount--
		} else 
			death();
	}
	lifetime--;
	if (lifetime == 0) {
		death();
	}
}
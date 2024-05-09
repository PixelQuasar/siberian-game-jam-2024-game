/// @function movement_handler(_x_spd, _y_spd)
/// @param {_x_spd} horizontal speed
/// @param {_y_spd} vertical speed

function movement_handler(_x_spd, _y_spd) {
	if (!place_meeting(x + _x_spd, y, global.solid_objs)) {
		x += _x_spd;
	}
	if (!place_meeting(x, y + _y_spd, global.solid_objs)) {
		y += _y_spd;
	}
}

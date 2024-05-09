function count_cord(_value, _to) {
	var _shake = shake_amplitude * (shake / 60);
	return (_to - _value) / 4 + irandom_range(-_shake, _shake);
}

if instance_exists(obj_player){
	if global.camera_mode {
		var _midpointx = (obj_player.x + mouse_x) / 2;
		var _midpointy = (obj_player.y + mouse_y) / 2;
		
		x_to = _midpointx;
		y_to = _midpointy;
	} else {
		x_to = obj_player.x;
		y_to = obj_player.y - 12;
	}
}

shake = max(0, shake - 1);

//follow the target
x += count_cord(x, x_to);
y += count_cord(y, y_to);

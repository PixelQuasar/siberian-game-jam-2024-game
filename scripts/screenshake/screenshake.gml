/// @function screenshake(_timer, _amplitude)
/// @param {_timer} screenshake timer
/// @param {_amplitude} screenshake amplitude
function screenshake(_timer, _amplitude){
	if (!instance_exists(obj_camera)) return;
	
	obj_camera.shake = _timer;
	obj_camera.shake_amplitude = _amplitude;
}

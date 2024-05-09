function movement_manager() {
	if global.move_speed != 0{
	
		if global.roll {
			global.move_speed = global.max_speed;
		}
	
		var _mspeed = global.move_speed + global.roll;
		var _mspeed_diag = (global.move_speed + global.roll) * 0.707; // ~1/sqrt(2)
	
		switch (global.movedir) {
		case 1: {
			movement_handler(_mspeed, 0);
			break;
			}
		case 2: {
			movement_handler(_mspeed_diag, -_mspeed_diag);
			break;
			}
		case 3: {
			movement_handler(0, -_mspeed);
			break;
			}
		case 4: {
			movement_handler(-_mspeed_diag, -_mspeed_diag); 
			break;
			}
		case 5: {
			movement_handler(-_mspeed, 0);
			break;
			}
		case 6: {
			movement_handler(-_mspeed_diag, _mspeed_diag);
			break;
			}
		case 7: {
			movement_handler(0, _mspeed);
			break;
			}
		case 8: {
			movement_handler(_mspeed_diag, _mspeed_diag);
			break;
			}
		}	
	}

	x = round(x);
	y = round(y);
}

movement_manager();

//controls (stupid)

if keyboard_check(ord("D")) or keyboard_check(ord("W"))
or keyboard_check(ord("A")) or keyboard_check(ord("S")){
	global.move = true;
} else {
	global.move = false;	
}

if !global.roll {
	
	if keyboard_check(ord("D")) and keyboard_check(ord("W")){
		global.movedir = 2;
	} else if keyboard_check(ord("A")) and keyboard_check(ord("W")){
		global.movedir = 4;
	} else if keyboard_check(ord("A")) and keyboard_check(ord("S")){
		global.movedir = 6;
	} else if keyboard_check(ord("D")) and keyboard_check(ord("S")){
		global.movedir = 8;
	} else if keyboard_check(ord("D")){
		global.movedir = 1;
	}else if keyboard_check(ord("W")){
		global.movedir = 3;
	}else if keyboard_check(ord("A")){
		global.movedir = 5;
	}else if keyboard_check(ord("S")){
		global.movedir = 7;
	}
}
if mouse_check_button_pressed(mb_middle){
	if global.camera_mode {
		global.camera_mode = false;
	} else {
		global.camera_mode = true;
	}
}

if global.move {
	if global.move_speed < global.max_speed{
		global.move_speed += global.max_speed/8;
	} else {
		global.move_speed = global.max_speed
	}
} else if !global.roll {
	if global.move_speed > 0 {
		global.move_speed = lerp(global.move_speed, 0, 0.5);
	}
}

if keyboard_check_pressed(vk_space){
	global.roll = true;
	alarm[0] = 20;
}
if instance_exists(obj_player){
	if global.camera_mode {
		var midpointx = (obj_player.x + mouse_x)/2;
		var midpointy = (obj_player.y + mouse_y)/2;
		
		xTo = midpointx;
		yTo = midpointy;
	} else {
		xTo = obj_player.x;
		yTo = obj_player.y-12;
	}
}

//follow the target
x += (xTo - x)/4;
y += (yTo - y)/4;

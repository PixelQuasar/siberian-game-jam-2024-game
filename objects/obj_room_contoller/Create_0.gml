spris_active = false;
portals = [];

generate_portals = function () {
	var _number = irandom_range(3, 5)
	
	for (var i = 0; i < _number; i++) {
		var _x = x + irandom_range(-400, 400);
		var _y = y + 200 + irandom_range(-400, 400);
		var _new_portal = instance_create_layer(
			_x, _y, "floor", obj_portal
		);
		
		_new_portal.next_room = instance_find(
			obj_room_contoller, 
			irandom(instance_number(obj_room_contoller) - 1)
		);
		
		// get next room, but not currrent
		while (_new_portal.next_room == self) {
			_new_portal.next_room = instance_find(
				obj_room_contoller, 
				irandom(instance_number(obj_room_contoller) - 1)
			);
		}
		
		
	}
}

clear = function() {
	is_active = false;
	array_foreach(portals, function(_portal) {
		instance_destroy(_portal);
	});
	
	// maybe write corpse cleaning here later
}

if (is_undefined(struct_get(global.items_collected, item)))
	global.items_collected[$ item] = 0
global.items_collected[$ item]++
global.items[$ item].on_pickup()

instance_destroy(self)
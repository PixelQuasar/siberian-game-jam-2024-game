if (is_undefined(struct_get(global.items_collected, item))) {
	global.items_collected[$ item] = 0;
}

global.items_collected[$ item]++
global.items[$ item].on_pickup()

var _window = instance_create_depth(x, y, 999, obj_popup_window);
_window.title = global.items[$ item].name;
_window.subtitle = global.items[$ item].description;
_window.icon_id = global.items[$ item].sprite_id;


instance_destroy(self)
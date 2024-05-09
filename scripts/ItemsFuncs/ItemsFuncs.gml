function create_item(xx, yy, item_name) {
	var n = instance_create_depth(xx, yy, 0, obj_item)
	n.item = item_name
	n.sprite_index = global.items[$ n.item].sprite
}

function create_random_item(xx, yy) {
	create_item(xx, yy, global.items_list[irandom(array_length(global.items_list) - 1)])
}
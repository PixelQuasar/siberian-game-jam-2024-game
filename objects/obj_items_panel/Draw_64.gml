draw_set_font(font)
draw_set_halign(fa_left)

var items_names = struct_get_names(global.items_collected)
for (var i = 0; i < array_length(items_names); i++) {
	var xx = x_start + (i mod items_per_row) * (x_frame_size + x_margin)
	var yy = y_start + (i div items_per_row) * (y_frame_size + y_margin)
	var item = global.items[$ items_names[i]]
	//draw_sprite_ext(spr_item_frame, 0, xx, yy, gui_scale, gui_scale, 0, c_white, 1)
	draw_sprite_ext(spr_power_item, item.sprite_id, xx + x_offset, yy + y_offset, gui_scale, gui_scale, 0, c_white, 1)
	draw_text_transformed(xx, yy, global.items_collected[$ items_names[i]], gui_scale, gui_scale, 0)
	
	var mxx = window_mouse_get_x()
	var myy = window_mouse_get_y()
	if (mxx >= xx && mxx < xx + x_frame_size
	&&	myy >= yy && myy < yy + y_frame_size) {
		draw_text(mxx, myy, item.name + "\n" + item.description)
	}
}
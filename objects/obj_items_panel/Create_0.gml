x_start = 40
y_start = 20

gui_scale = 2

items_per_row = 8

x_offset = 4 * gui_scale
y_offset = 4 * gui_scale

x_frame_size = sprite_get_width(spr_power_item) * gui_scale
y_frame_size = sprite_get_height(spr_power_item) * gui_scale
left_offset = sprite_get_xoffset(spr_power_item) * gui_scale
top_offset = sprite_get_yoffset(spr_power_item) * gui_scale

show_debug_message(left_offset)
show_debug_message(top_offset)

font = fnt_font

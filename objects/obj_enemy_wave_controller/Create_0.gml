waves_amount = 1
wave_points = 100

cur_wave = 0
is_wave_cleared = true

spawn_boss = false

tile_size = 16

def_wave_cooldown = 3 * 60
cur_wave_cooldown = def_wave_cooldown

gui_scale = 2

x_margin = 4 * gui_scale
x_start = window_get_width() / 2
x_flag_size = sprite_get_width(spr_wave_flag) * gui_scale
y_start = window_get_height() - x_flag_size - 4 * gui_scale
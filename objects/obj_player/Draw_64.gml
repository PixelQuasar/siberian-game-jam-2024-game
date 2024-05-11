draw_set_halign(fa_left)

var _text = string(global.hp) + "/" + string(global.max_hp);
draw_set_color(c_white);
draw_set_font(fnt_default);
draw_text(margin * 2,  wh - margin * 5, _text);
draw_set_color(c_gray);
draw_rectangle(margin * 2, wh - margin * 2, margin * 2 + global.max_hp * 4, wh - margin * 2 - 32, false);
draw_set_color(c_lime);
draw_rectangle(margin * 2, wh - margin * 2, margin * 2 + global.hp * 4, wh - margin * 2 - 32, false);
draw_set_color(c_white);

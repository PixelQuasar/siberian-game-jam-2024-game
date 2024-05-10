x = ww / 2 + x_offset;
y = wh / 2;

// bg
draw_set_color(bg_color);
draw_rectangle(x - width / 2, y - height / 2, x + width / 2, y + height / 2, false);

// title
draw_set_color(title_color);
draw_set_halign(fa_center);
draw_set_font(fnt_title);
draw_text(x, y - height / 2 + 50, title);

// subtitle
draw_set_color(subtitle_color);
draw_set_font(fnt_default);
draw_text(x, y - height / 2 + 100, subtitle);

// icon
draw_set_color(subtitle_color);
draw_sprite_ext(icon, icon_id, x, y, 2, 2, 0, c_white, 1);

// skip
draw_set_color(skip_msg_color);
draw_set_font(fnt_default);
draw_text(x, y + height / 2 - 50, skip_msg);

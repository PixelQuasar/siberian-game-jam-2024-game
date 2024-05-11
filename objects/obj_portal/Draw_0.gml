draw_self();

draw_set_font(fnt_default);
draw_set_halign(fa_center);

if (is_player_nearby) {
	draw_text(x, y + sin(get_timer() / 1000000 * 6.18) * 5 - 50, "Нажмите F чтобы\nотправиться в неизвестность..");
}

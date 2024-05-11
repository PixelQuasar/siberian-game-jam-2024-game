draw_set_halign(fa_center);

draw_set_font(fnt_title);
draw_text(ww / 2, wh / 2 - 100, "DUSTMAKER");

for (var i = 0; i < array_length(options); i++) {
	var _text = options[i];
	if (i == current_option) _text = ">" + _text + "<"
	draw_set_font(fnt_default);
	draw_text(ww / 2, wh / 2 + i * 32, _text);
}

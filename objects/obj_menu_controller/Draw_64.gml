draw_set_halign(fa_center);

for (var i = 0; i < array_length(options); i++) {
	var _text = options[i];
	if (i == current_option) _text = ">" + _text + "<"
	draw_text(ww / 2, wh / 2 + i * 32, _text);
}

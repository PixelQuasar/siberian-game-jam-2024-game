if (is_active){
	var _scale = sin((anim_timer / 100) * 6.18) * 0.15 + 1;
	draw_text_transformed(x, y, key, _scale, _scale, 0);
}

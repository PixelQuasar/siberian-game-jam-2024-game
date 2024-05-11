if (global.pause) {
	return
}

cur_timer++
if (cur_timer >= def_timer && !is_detonated) {
	is_detonated = true
	sprite_index = spr_player_bomb_boom

	var _list = ds_list_create();
	var hitted_enemies_num = collision_circle_list(x, y, radius, obj_enemy, 0, 1, _list, false)


	for (var i = 0; i < hitted_enemies_num; i++) {
		_list[| i].get_hit(damage)
	}	
}
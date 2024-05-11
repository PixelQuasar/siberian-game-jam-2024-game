if (!instance_exists(obj_player))
	instance_destroy(self)

x = obj_player.x
y = obj_player.y - 40

//draw_sprite_ext(spr_health_bar, 0, x, y, global.hp / global.max_hp, 1,0, 
//				make_color_rgb(min(255, 510 * (1 - global.hp / global.max_hp)), min(255, 510 * (global.hp / global.max_hp)), 0), 1)
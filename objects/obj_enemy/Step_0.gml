if (hp <= 0 && !is_dead) {
	death_handler()
}

if (global.pause || is_appearing)
	return
	
draw_handler();
action_handler();
player_damage_collision_handler();

movement_handler(lengthdir_x(spd, dir), lengthdir_y(spd, dir));

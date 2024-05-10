event_inherited();

function player_damage_collision_handler() {
	if (!is_active || global.immune_to_damage_timer)
		return
	
	if (place_meeting(x, y, obj_player) && !global.player_is_dead)	{
		global.immune_to_damage_timer = global.default_immune_to_damage_timer;
		screenshake(60, 5);
		obj_player.impulse_dir = point_direction(x, y, obj_player.x, obj_player.y);
		obj_player.impulse_spd = 10;
		global.hp -= count_enemy_damage(damage);
		if (!can_pierce) {
			death();
		}
	}
}

player_damage_collision_handler();

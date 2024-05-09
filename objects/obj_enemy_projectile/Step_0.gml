event_inherited();

function player_damage_collision_handler() {
	if (global.immune_to_damage_timer != 0) { // ignoring the damage
	global.immune_to_damage_timer--;
		return;
	}
	
	if (place_meeting(x, y, obj_player))	{
		global.immune_to_damage_timer = global.default_immune_to_damage_timer;
		screenshake(60, 5);
		global.hp -= count_enemy_damage(damage);
		if (global.hp < 0) {
			death_handler();
		}
		if (!can_pierce) {
			death();
		}
	}
}

player_damage_collision_handler();

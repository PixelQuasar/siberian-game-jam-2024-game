event_inherited();

function enemy_damage_collision_handler() {
	if (!is_active)
		return
	
	var n = instance_place(x, y, obj_enemy);
	if (n != noone && !n.is_dead)	{
		n.immune_to_damage_timer = global.default_immune_to_damage_timer;
		var dmg = damage
		if (random(1) <= global.crit_chance) {
			dmg *= 2
			create_fly_message(x, y, "Crit!")
		}
		n.hp -= dmg;
		if (!can_pierce) {
			death();
		}
	}
}

enemy_damage_collision_handler();

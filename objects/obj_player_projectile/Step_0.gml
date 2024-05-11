event_inherited();

function ricochet_enemy() {
	spd = max(0, spd + acc);
	var _h_spd = lengthdir_x(spd, dir);
	var _v_spd = lengthdir_y(spd, dir);
	if (!place_meeting(x - _h_spd, y + _v_spd, obj_enemy)) {
		_h_spd = -_h_spd
	} else if (!place_meeting(x + _h_spd, y - _v_spd, obj_enemy)) {
		_v_spd = -_v_spd
	} else {
		_h_spd = -_h_spd
		_v_spd = -_v_spd
	}
	dir = point_direction(x, y, x + _h_spd, y + _v_spd);
	x += _h_spd;
	y += _v_spd;
	
	image_angle = dir;
}

function enemy_damage_collision_handler() {
	if (!is_active)
		return
	
	var n = instance_place(x, y, obj_enemy);
	if (n != noone && !n.is_dead)	{
		audio_play_sound(snd_enemy_damage, 1, 0, 0.5);
		n.immune_to_damage_timer = global.default_immune_to_damage_timer;
		var dmg = damage;
		global.hp = min(global.max_hp, global.hp + damage / 2 * global.vampirism);
		global.hp = floor(global.hp);
		if (random(1) <= global.crit_chance) {
			dmg *= 2
			create_fly_message(x, y, "Crit!")
		}
		n.get_hit(dmg);
		if (can_pierce)
			return
		
		if (ricochet_amount) {
			ricochet_enemy()	
			ricochet_amount--
		} else
			death();
	}
}

enemy_damage_collision_handler();

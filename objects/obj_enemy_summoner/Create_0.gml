event_inherited();

default_spd = 2;

image_alpha = 0.5

function summon() {
	action_summon(rand_item([obj_enemy_gunner, obj_enemy_spreader]), x, y)	
}

actions_pool = [
	{
		name: "ACTION_MOVE_FROM_PLAYER",
		min_len: 40,
		max_len: 80,
		action: action_move_from_player,
	},
	{
		name: "ACTION_SUMMON",
		min_len: 240,
		max_len: 240,
		action: summon,
	},
];

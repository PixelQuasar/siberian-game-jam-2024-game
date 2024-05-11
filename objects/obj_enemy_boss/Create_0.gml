event_inherited();

image_xscale = 2;
image_yscale = 2;

default_spd = 4;
hp = 250;
max_hp = 250;
damage = 20;

function summon() {
	action_summon(rand_item([obj_enemy_gunner, obj_enemy_spreader, obj_enemy_melee]), x, y)	
}

function draw_handler() {
	if !(dir < 9 || dir > 270) {
		image_xscale = -2;
	} else {
		image_xscale = 2;
	}
}

actions_pool = [
	{
		name: "ACTION_MOVE_RANDOM",
		min_len: 40,
		max_len: 80,
		action: action_move_random,
	},
		{
		name: "ACTION_MOVE_PLAYER",
		min_len: 100,
		max_len: 120,
		action: action_move_to_player,
	},
	{
		name: "ACTION_RUSH",
		min_len: 20,
		max_len: 60,
		action: action_move_rush,
	}, 
	{
		name: "ACTION_CIRCLE_SHOOT",
		min_len: 30,
		max_len: 30,
		action: action_circle_shoot,
	},
	{
		name: "ACTION_SPREAD_SHOOT",
		min_len: 30,
		max_len: 30,
		action: action_spread_shoot,
	},
	{
		name: "ACTION_SUMMON",
		min_len: 90,
		max_len: 90,
		action: summon,
	},
];

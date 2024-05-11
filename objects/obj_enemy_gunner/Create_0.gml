event_inherited();

default_spd = 2;

actions_pool = [
	{
		name: "ACTION_MOVE_RANDOM",
		min_len: 60,
		max_len: 120,
		action: action_move_random,
	},
	{
		name: "ACTION_MOVE_FROM_PLAYER",
		min_len: 10,
		max_len: 20,
		action: action_move_from_player,
	},
	{
		name: "ACTION_SHOOT",
		min_len: 20,
		max_len: 40,
		action: action_spread_shoot,
	},
	//{
	//	name: "ACTION_IDLE",
	//	min_len: 30,
	//	max_len: 60,
	//	action: action_idle,
	//}
];


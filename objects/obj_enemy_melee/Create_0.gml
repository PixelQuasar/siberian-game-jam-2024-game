event_inherited();

default_spd = 2;

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
	//{
	//	name: "ACTION_IDLE",
	//	min_len: 60,
	//	max_len: 120,
	//	action: action_idle,
	//}
];

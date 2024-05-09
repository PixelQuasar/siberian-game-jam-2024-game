event_inherited();

default_spd = 2;

actions_pool = [
	{
		name: "ACTION_MOVE_RANDOM",
		max_len: 60,
		min_len: 120
	},
	{
		name: "ACTION_MOVE_FROM_PLAYER",
		max_len: 60,
		min_len: 120
	},
	{
		name: "ACTION_SHOOT",
		max_len: 20,
		min_len: 40
	},
	{
		name: "ACTION_IDLE",
		max_len: 60,
		min_len: 120
	}
];


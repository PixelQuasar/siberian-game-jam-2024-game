event_inherited();

default_spd = 2;

actions_pool = [
	{
		name: "ACTION_MOVE_RANDOM",
		max_len: 40,
		min_len: 80
	},
		{
		name: "ACTION_MOVE_PLAYER",
		max_len: 100,
		min_len: 120
	},
	{
		name: "ACTION_RUSH",
		max_len: 20,
		min_len: 60
	}, 
	{
		name: "ACTION_IDLE",
		max_len: 60,
		min_len: 120
	}
];

hp = 50;
max_hp = 50;
damage = 10;
is_stunned = false;
default_spd = 10;
spd = 0;
dir = 0;
weight = 10;
actions = []
action_max_timer = 0;
action_timer = 0;

IDLE_ACTION = {
	name: "ACTION_IDLE",
	max_len: 60,
	min_len: 120
};

current_action = IDLE_ACTION;
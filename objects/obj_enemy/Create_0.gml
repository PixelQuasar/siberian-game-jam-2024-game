hp = 50;
max_hp = 50;
damage = 10;
is_stunned = false;
default_spd = 10;
is_appearing = true
alarm[0] = 60
spd = 0;
dir = 0;
weight = 10;
actions_pool = [];
action_max_timer = 0;
action_timer = 0;
is_dead = false


current_action = "";
action = action_idle

global.IDLE_ACTION = {
	name: "ACTION_IDLE",
	min_len: 60,
	max_len: 120,
	action: action_idle,
};

var n = instance_create_layer(x, y - 40, "Instances_overlay", obj_enemy_healthbar)
n.linked_object = self

function player_damage_collision_handler() {
	if (is_dead || global.immune_to_damage_timer)
		return
	
	if (place_meeting(x, y, obj_player) && !global.player_is_dead)	{
		global.immune_to_damage_timer = global.default_immune_to_damage_timer;
		screenshake(60, 5);
		obj_player.impulse_dir = point_direction(x, y, obj_player.x, obj_player.y);
		obj_player.impulse_spd = 10;
		global.hp -= count_enemy_damage(damage);
	}
}

function action_handler () {
	if (action_timer <= 0) { // pick new action from enemy's action pool
		current_action = rand_item(actions_pool);
		action = current_action.action
		action_timer = irandom_range(current_action.min_len, current_action.max_len);
		action_max_timer = action_timer;
	}
	
	// handle current action
	action()
	action_timer--;
}

function death_handler() {
	is_dead = true
	instance_create_depth(x, y, 0, obj_smoke);
	instance_destroy(self)
}

function draw_handler() {
	if !(dir < 9 || dir > 270) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
}

function get_hit(damage) {
	hp -= damage
}
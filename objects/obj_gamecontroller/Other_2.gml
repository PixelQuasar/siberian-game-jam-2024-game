// camera & global
global.camera_mode = false;
global.solid_objs = [obj_wall]
global.e_pressed = true;
global.f_pressed = true;
global.difficulty = 100;
global.cur_level = 0;
global.attack_move_speed = 5;
global.ricochet_amount = 0;
global.dodge_chance = 0;
global.pause = false;
global.difficulties = [
	{
		name: "blue",
		min_val: 50,
		max_val: 200 
	},
	{
		name: "purple",
		min_val: 150,
		max_val: 300
	},
	{
		name: "red",
		min_val: 250,
		max_val: 300
	}
]
global.game_rooms = [room_1, room_2, room_3]

// player
global.max_hp = 2000;
global.hp = global.max_hp;
global.crit_chance = 0.1;
global.damage = 1;
global.attack_speed = 1;
global.move_speed = 0;
global.max_speed = 4;
global.movedir = 0;
global.roll = false;
global.move = false;
global.crit_chance = 0.05
global.armor = 0
global.default_immune_to_damage_timer = 120;
global.immune_to_damage_timer = 0;
global.player_is_dead = false


room_goto(room_1);
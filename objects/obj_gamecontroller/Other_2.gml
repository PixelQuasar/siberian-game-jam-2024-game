// camera & global
global.camera_mode = false;
global.solid_objs = [obj_wall]
global.e_pressed = false;
global.f_pressed = false;
global.difficulty = 100;
global.cur_level = 0;
global.attack_move_speed = 5;
global.ricochet_amount = 0;
global.dodge_chance = 0;
global.pause = false;

// player
global.max_hp = 50;
global.hp = global.max_hp;
global.roll_bomb_scale = 0
global.crit_chance = 0.1;
global.damage = 1;
global.attack_speed = 1;
global.move_speed = 0;
global.max_speed = 4;
global.movedir = 7;
global.roll = false;
global.move = false;
global.crit_chance = 0.05
global.armor = 0
global.default_immune_to_damage_timer = 120;
global.immune_to_damage_timer = 0;
global.player_is_dead = false

global.waves_amount = 1
global.items_collected = {}
global.spawn_boss = false


room_goto(rm_room_1);

global.music = audio_play_sound(music_battle, 1, true);
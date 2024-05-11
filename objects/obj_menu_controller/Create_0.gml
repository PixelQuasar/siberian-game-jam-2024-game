options = ["Начать", "Создатели", "Выйти"]
current_option = 0;
ww = window_get_width();
wh = window_get_height();
audio_play_sound(music_menu, 1, 1, 1);

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

global.max_hp = 75;
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
global.vampirism = 0;

global.progress = 0;

global.waves_amount = 1
global.items_collected = {}
global.spawn_boss = false
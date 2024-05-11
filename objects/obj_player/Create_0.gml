depth = -3;

ww = window_get_width();
wh = window_get_height();
margin = 16;

roll_frame = 0;
run_frame = 0;
attack_frame = 0;

attacking = false;

impulse_spd = 0;
impulse_dir = 0;

can_shoot = true;
can_swing = true;

instance_create_layer(x, y - 40, "Instances_overlay", obj_player_healthbar)
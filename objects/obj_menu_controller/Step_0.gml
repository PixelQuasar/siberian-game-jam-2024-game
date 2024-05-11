if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_right)) {
	current_option = (current_option - 1) % array_length(options);
	audio_play_sound(snd_next, 1, 0, 1);
}

if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_left)) {
	current_option = (current_option + 1) % array_length(options);
	audio_play_sound(snd_next, 1, 0, 1);
}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("E"))) {
	switch (current_option) {
		case 0: {
			global.music = audio_play_sound(music_battle, 1, true);
			room_goto(rm_room_1);
			break;
		}
		case 1: {
			var _msg = instance_create_depth(x, y, 0, obj_fly_message);
			_msg.message = ["GearShocky", "Neprim", "PixelQuasar"][irandom(2)];
			break;
		}
		case 2: {
			game_end();
			break;
		}
	}
}
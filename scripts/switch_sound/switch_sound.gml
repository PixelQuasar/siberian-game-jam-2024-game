// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function switch_sound(_is_battle) {
	if (_is_battle) {
		_is_battle = audio_is_playing(music_battle);
	}
	if (_is_battle) {
		var _offset = audio_sound_get_track_position(global.music);
		audio_stop_all();
		show_debug_message(_offset);
		global.music = audio_play_sound(music_calm, 1, true, 1, _offset);
	}
	else {
		var _offset = audio_sound_get_track_position(global.music);
		audio_stop_all();
		global.music = audio_play_sound(music_battle, 1, true, 1, _offset);
	}
}
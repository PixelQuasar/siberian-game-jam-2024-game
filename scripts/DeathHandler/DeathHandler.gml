/// @function player_death_handler() oh no it seems you are fucking dead!!
function player_death_handler(){
	global.player_is_dead = true
	show_debug_message("DEAD!");
	game_restart()
}
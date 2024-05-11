/// @function count_enemy_damage(_damage)
/// @param {_damage} damage that the enemy deals to the player.
function count_enemy_damage(_damage) {
	if (irandom(100) < global.dodge_chance) return 0;
	return max(1, _damage - global.armor);
}

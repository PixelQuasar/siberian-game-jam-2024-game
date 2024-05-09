global.items = {
	glasses: {
		name: "Очки",
		description: "Повышают шанс крита.",
		visible: false,
		sprite: spr_glasses,
		on_pickup: function() {
			global.crit_chance += 0.1
		}
	},
	armorplate: {
		name: "Бронепластина",
		description: "Немного повышает броню.",
		visible: false,
		sprite: spr_armorplate,
		on_pickup: function() {
			global.armor += 1
		}
	},
	energydrink: {
		name: "Энергетик",
		description: "Повышает скорость передвижения",
		visible: false,
		sprite: spr_energydrink,
		on_pickup: function() {
			global.max_speed += 0.2
		}
	},
}

global.items_collected = {}
global.items_list = struct_get_names(global.items)
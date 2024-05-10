global.items = {
	bullet: {
		name: "Золотая пуля",
		description: "Увеличивает скорость снарядов.",
		visible: false,
		sprite_id: 0,
		on_pickup: function() {
			global.attack_move_speed += 2
		}
	},
	life_potion: {
		name: "Зелье здоровья",
		description: "Увеличивает максимальное здоровье.",
		visible: false,
		sprite_id: 1,
		on_pickup: function() {
			global.max_hp += 25;
			global.hp += 25;
		}
	},
	shovel: {
		name: "Новенькая лопата",
		description: "Увеличивает урон и скорость атаки.",
		visible: false,
		sprite_id: 2,
		on_pickup: function() {
			global.damage += 2;
			global.attack_speed *= 0.9;		
		}
	},
	boot: {
		name: "Ботинок",
		description: "Увеличивает скорость передвижения.",
		visible: false,
		sprite_id: 3,
		on_pickup: function() {
			global.max_speed += 1
		}
	},
	rubber_band: {
		name: "Резинка",
		description: "Увеличивает количество рикошетов снарядов.",
		visible: false,
		sprite_id: 4,
		on_pickup: function() {
			global.ricochet_amount += 1
		}
	},
	clover: {
		name: "Клевер",
		description: "Увеличивает шанс крита.",
		visible: false,
		sprite_id: 7,
		on_pickup: function() {
			global.crit_chance += 0.1
		}
	},
}

global.items_collected = {}
global.items_list = struct_get_names(global.items)






















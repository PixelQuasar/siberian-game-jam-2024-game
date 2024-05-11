global.items = {
	bullet: {
		name: "Счастливая пуля",
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
		name: "Ковбойский ботинок",
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
		name: "3.5-листный клевер",
		description: "Увеличивает шанс крита и уклонения.",
		visible: false,
		sprite_id: 7,
		on_pickup: function() {
			global.crit_chance += 0.1;
			global.dodge_chance += 2;
		}
	},
	bomb_plane: {
		name: "Макет самолета",
		description: "Оставляет бомбу после кувырка.\n следующие подборы увеличивают радиус взрыва.",
		visible: false,
		sprite_id: 11,
		on_pickup: function() {
			global.roll_bomb_scale += 1
		}
	},
	zombie_finger: {
		name: "Палец зомби",
		description: "Продлевает неуязвимость после\nполучения урона.",
		visible: false,
		sprite_id: 6,
		on_pickup: function() {
			global.default_immune_to_damage_timer += 10;
		}
	},
	vampire_eye: {
		name: "Глаз вампира",
		description: "+5% вампиризма.",
		visible: false,
		sprite_id: 13,
		on_pickup: function() {
			global.vampirism += 0.05;
		}
	},
	letter: {
		name: "Письмо куда надо",
		description: "Понижает накопленную сложность.",
		visible: false,
		sprite_id: 10,
		on_pickup: function() {
			global.cur_level--;
			global.waves_amount--;
		}
	},
	carrot: {
		name: "Морковь",
		description: "Повышает скорость атаки и шанс крита.",
		visible: false,
		sprite_id: 5,
		on_pickup: function() {
			global.cur_level--;
			global.waves_amount--;
		}
	},
	life_crystal: {
		name: "Кристалл жизни",
		description: "Повышает максимальное здоровье/nи броню",
		visible: false,
		sprite_id: 9,
		on_pickup: function() {
			global.max_hp += 13;
			global.hp += 13;
			global.armor += 1;
		}
	},
		life_crystal: {
		name: "Кристалл смерти",
		description: "Повышает урон и шанс крита",
		visible: false,
		sprite_id: 8,
		on_pickup: function() {
			global.crit_chance += 0.1;
			global.damage *= 1.1;
		}
	},
}

global.items_list = struct_get_names(global.items)






















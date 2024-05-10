global.items = {
	glasses: {
		name: "Lucku bullet",
		description: "Increasing critical damage chance. Critical damage = 200% of  basic damage.",
		visible: false,
		sprite_id: 0,
		//sprite: spr_glasses,
		on_pickup: function() {
			global.crit_chance += 0.1
		}
	},
	armorplate: {
		name: "Life potion",
		description: "Increasing max HP.",
		visible: false,
		sprite_id: 1,
		//sprite: spr_armorplate,
		on_pickup: function() {
			global.max_hp += 25;
			global.hp += 25;
		}
	},
	energydrink: {
		name: "Brand new showel",
		description: "Increasing damage and attack speed.",
		visible: false,
		sprite_id: 0,
		//sprite: spr_energydrink,
		on_pickup: function() {
			global.damage += 5;
			global.attack_speed *= 0.85;
		}
	},
}

global.items_collected = {}
global.items_list = struct_get_names(global.items)
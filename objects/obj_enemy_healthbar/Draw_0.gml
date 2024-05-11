if (!instance_exists(linked_object))
	instance_destroy(self)

x = linked_object.x
y = linked_object.y - 40

draw_sprite_ext(spr_health_bar, 0, x, y, linked_object.hp / linked_object.max_hp, 1,0, 
				make_color_rgb(min(255, 510 * (1 - linked_object.hp / linked_object.max_hp)), min(255, 510 * (linked_object.hp / linked_object.max_hp)), 0), 1)
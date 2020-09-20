/// @description Insert description here
// You can write your code in this editor

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

draw_sprite(spr_temp_menu_base, 0, inventory_x, inventory_y);


item_one_x = inventory_x + 7;
item_one_y = inventory_y + 8;

if(point_in_rectangle(mouseX, mouseY, item_one_x, item_one_y, item_one_x + inventory_item_width,
	item_one_y + inventory_item_height)){
		draw_sprite(spr_inventory_hover, 0, item_one_x, item_one_y);
		//if(mouse_check_button(mb_left)){
		//	room_goto(rm_town);
		//}
}
else{
	draw_sprite(spr_inventory_slot, 0, item_one_x, item_one_y);
}

var i;
for (i = 0; i < 10; i += 1)
   {
	if(point_in_rectangle(mouseX, mouseY, item_one_x, item_one_y, item_one_x + inventory_item_width,
		item_one_y + inventory_item_height)){
			draw_sprite(spr_inventory_hover, 0, item_one_x, item_one_y);
			//if(mouse_check_button(mb_left)){
			//	room_goto(rm_town);
			//}
	}
	else{
		draw_sprite(spr_inventory_slot, 0, item_one_x, item_one_y);
	}
	// increment x
	item_one_x += 109;
}



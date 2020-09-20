/// @description Insert description here
// You can write your code in this editor

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);


if(point_in_rectangle(mouseX, mouseY, inventory_x, inventory_y, inventory_x + inventory_width,
	inventory_y + inventory_height)){
		draw_sprite(spr_player, 0, inventory_x, inventory_y)
		//if(mouse_check_button(mb_left)){
		//	room_goto(rm_town);
		//}
}
else{
	draw_sprite(spr_temp_menu_base, 0, inventory_x, inventory_y)
}
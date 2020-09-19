/// @description Insert description here
// You can write your code in this editor

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

if(point_in_rectangle(mouseX, mouseY, x, y, x + sprite_width, y + sprite_height)){
	sprite_index = spr_temp_start_game_hover;
		if(mouse_check_button(mb_left)){
			room_goto(rm_town);
		}
	
}
else{
	sprite_index = spr_temp_start_game;
}
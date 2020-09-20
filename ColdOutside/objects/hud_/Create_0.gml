/// @description Insert description here
// You can write your code in this editor

// base inventory
gui_width = camera_get_view_width(view_camera[0]);
gui_height = camera_get_view_width(view_camera[0]);

inventory_x = gui_width/4;
inventory_y = gui_height/1.05;

inventory_width = sprite_get_width(spr_temp_menu_base);
inventory_height = sprite_get_height(spr_temp_menu_base);
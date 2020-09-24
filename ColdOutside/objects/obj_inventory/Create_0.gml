/// @description Insert description here
// You can write your code in this editor

// number of inventory Items
inventory_slots = 4;
x_increase = 109;
mouse_follow_stack = noone;
timer = room_speed * .3;

// holds all of the stack values
inventory_list = ds_list_create();
var i;
for (i = 0; i < 10; i += 1){
	stack_instance = instance_create_depth(0,0, 0, obj_stack);
	//stack_instance = 0;
	ds_list_add(inventory_list, stack_instance);
}



// base inventory
gui_width = camera_get_view_width(view_camera[0]);
gui_height = camera_get_view_width(view_camera[0]);

inventory_x = gui_width/4;
inventory_y = gui_height/1.05;

inventory_width = sprite_get_width(spr_temp_menu_base);
inventory_height = sprite_get_height(spr_temp_menu_base);

// inventory items
inventory_item_width = sprite_get_width(spr_inventory_slot);
inventory_item_height = sprite_get_height(spr_inventory_slot);
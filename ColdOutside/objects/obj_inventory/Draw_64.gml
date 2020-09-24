/// @description Insert description here
// You can write your code in this editor

player_reference =  instance_find(obj_player, 0);

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

draw_sprite(spr_temp_menu_base, 0, inventory_x, inventory_y);

item_one_x = inventory_x + 7;
item_one_y = inventory_y + 8;

var i;
for (i = 0; i < inventory_slots; i += 1)
   {
	var current_stack = ds_list_find_value(inventory_list, i);
	   
	if(point_in_rectangle(mouseX, mouseY, item_one_x, item_one_y, item_one_x + inventory_item_width,
		item_one_y + inventory_item_height)){
			
			// what to do on a left click on the object
			if(player_reference.left_click && current_stack.stack_type != ""){
				mouse_follow_stack = current_stack;
			}
	}
	else{
		if(mouse_follow_stack != noone && current_stack == mouse_follow_stack){
			draw_sprite(spr_inventory_hover, 0, item_one_x, item_one_y);
		}else{
			draw_sprite(spr_inventory_slot, 0, item_one_x, item_one_y);
		}
	}
	
	// draw the gui stack images. TODO: display the number of items in the stack clearly
	
	
	if(current_stack.stack_type != ""){
		draw_sprite(current_stack.gui_sprite_index, 0, item_one_x + x_increase*.15, item_one_y-3);
		draw_text(item_one_x + x_increase*.05, item_one_y+2, string(current_stack.stack_count));
	}
	
	// increment x
	item_one_x += x_increase;
	
	// follow the mouse
	if(mouse_follow_stack != noone){
		draw_sprite(mouse_follow_stack.gui_sprite_index, 0, mouseX, mouseY);
		
		if(timer>0){
			timer --;
		}
		else{
			if(!scr_drag_stack(player_reference, mouseX, mouseY)){
				mouse_follow_stack = noone;
			}
			timer = room_speed * .3;
		}
	}
	
}



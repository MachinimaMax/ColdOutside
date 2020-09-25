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
	if(current_stack.stack_type != "" && current_stack.stack_count <= 0){
		current_stack = instance_create_depth(0,0, 0, obj_stack);
		current_stack.inventory_index = i;
		ds_list_replace(inventory_list, i, current_stack);
		
	}
	   
	if(point_in_rectangle(mouseX, mouseY, item_one_x, item_one_y, item_one_x + inventory_item_width,
		item_one_y + inventory_item_height)){
			
		if(replace_timer > 0){
			replace_timer--;
		}
			
		// what to do on a left click on the object
		if(player_reference.left_click && current_stack.stack_type != ""){
				
			// if there is already a stack being dragged and this slot is not empty
			if(mouse_follow_stack != noone && mouse_follow_stack.inventory_index != i){
				replace_timer = room_speed *.2;
					
				// put current_stack in this spot
				ds_list_replace(inventory_list, mouse_follow_stack.inventory_index, current_stack);
				current_stack.inventory_index = mouse_follow_stack.inventory_index;
					
				// put this spot in current_stacks place
				ds_list_replace(inventory_list, i, mouse_follow_stack);
				mouse_follow_stack.inventory_index = i;
					
				//current_stack = ds_list_find_value(inventory_list, i);
				mouse_follow_stack = noone;
			}
				
			if(replace_timer <= 0){
				replace_timer = room_speed *.2;
				mouse_follow_stack = current_stack;
			}
		// drag stack onto empty inventory slot
		}else if(player_reference.left_click && current_stack.stack_type == "" and mouse_follow_stack != noone){
			replace_timer = room_speed *.2;
			//cent_stack.inventory_index = mouse_follow_stack.inventory_index;
			ds_list_replace(inventory_list, mouse_follow_stack.inventory_index, current_stack);
			current_stack.inventory_index = mouse_follow_stack.inventory_index;
			
			ds_list_replace(inventory_list, i, mouse_follow_stack);
			mouse_follow_stack.inventory_index = i;
			
			mouse_follow_stack = noone
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
	
	if(current_stack != noone && current_stack.stack_type != ""){
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
			if(!scr_drag_stack(mouseX, mouseY, mouse_follow_stack)){
				mouse_follow_stack = noone;
			}
			timer = room_speed * .2;
		}
	}
	
}



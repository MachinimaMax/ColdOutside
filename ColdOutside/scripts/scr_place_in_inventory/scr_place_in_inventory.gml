// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// returns true if entire stack was able to be moved
function scr_place_in_inventory(_stack){
	
	inventory = instance_find(obj_inventory, 0);
	
	if(instance_exists(inventory)){
		// for every item in the stack
		for(m = 0; m < _stack.stack_count; m++){
				// for each active inventory stack see if it:
			// 2.) Has a stack -> check name and if they match see if there is room in the stack
		
			// first check to see if any combining can happen
			for (i = 0; i < inventory.inventory_slots; i += 1){
				current_stack = ds_list_find_value(inventory.inventory_list, i);
				if(current_stack.stack_type == _stack.stack_type &&
					current_stack.stack_count + 1 <= current_stack.stack_limit){
				
					current_stack.stack_count += 1;
				
					// if the stack is now empty
					_stack.stack_count -= 1;
					if(_stack.stack_count <= 0){
						_stack.stack_count = 1; // send over one item from this stack
						_stack.sprite_index = noone;
						return true;
					}
				}
			}
		
			// check to see if any empty spots are available
			for (i = 0; i < inventory.inventory_slots; i += 1){
				
				if(ds_list_find_value(inventory.inventory_list, i).stack_type == ""){
				
					ds_list_set(inventory.inventory_list, i, _stack);
				
					_stack.stack_count -= 1;
					if(_stack.stack_count <= 0){
						// we need to make a new stack here with the old stacks values
						inventory_stack = instance_create_depth(x, y, 0, obj_stack);
						_stack.stack_count = 1; // send over one item from this stack
						_stack.sprite_index = noone;
						return true;
					}
				}
				
				for (i = 0; i < inventory.inventory_slots; i += 1){
					current_stack = ds_list_find_value(inventory.inventory_list, i);
					if(current_stack.stack_type == _stack.stack_type &&
						current_stack.stack_count + 1 <= current_stack.stack_limit){
				
						current_stack.stack_count += 1;
				
						// if the stack is now empty
						_stack.stack_count -= 1;
						if(_stack.stack_count <= 0){
							_stack.stack_count = 1; // send over one item from this stack
							_stack.sprite_index = noone;
							return true;
						}
					}
				}
			}
		}
	}

	return false
}
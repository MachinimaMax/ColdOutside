// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// returns true if entire stack was able to be moved
function scr_place_in_inventory(_stack){
	
	inventory = instance_find(obj_inventory, 0);
	
	if(instance_exists(inventory)){
		// for every item in the stack
		var not_inserted = true;
		var elements = _stack.stack_count;
		
		for(m = 0; m < elements; m++){
			// make it's only posible to make one insertion per outer loop cycle
			not_inserted = true;
		
			// first check to see if any combining can happen
			for (i = 0; i < inventory.inventory_slots; i += 1){
				current_stack = ds_list_find_value(inventory.inventory_list, i);
				
				if(current_stack.stack_type == _stack.stack_type &&
					current_stack.stack_count + 1 <= current_stack.stack_limit){
				
					// this counts as adding the stack item to inventory
					_stack.stack_count -= 1;
					current_stack.stack_count += 1;
				
					// if the stack is now empty
					if(_stack.stack_count <= 0){
						_stack.sprite_index = noone;
						return true;
					}
					not_inserted = false;
					break;
				}
			}
		
			// Then check for empty spots making sure to fill them up all the way if necessary
			if(not_inserted){
				for (i = 0; i < inventory.inventory_slots; i += 1){
				
					// check for empty and if empty add
					if(ds_list_find_value(inventory.inventory_list, i).stack_type == ""){
					
						// pass to inventory by value not reference
						var stack_deep_copy = noone;
						with(_stack){
							stack_deep_copy = instance_copy(false);
						}
					
						// add stack to empty inventory space
						stack_deep_copy.stack_count = 1;
						stack_deep_copy.sprite_index = noone;
						
						ds_list_set(inventory.inventory_list, i, stack_deep_copy);
						_stack.stack_count -= 1;
					
						// if no stack items are left do this
						if(_stack.stack_count <= 0){
							_stack.sprite_index = noone;
							return true;
						}
					
						break;
					
					}
				}
			}
		}
	}
	return false
}
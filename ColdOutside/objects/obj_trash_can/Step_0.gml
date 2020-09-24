/// @description Insert description here
// You can write your code in this editor

// refill the trashcan every morning
if(day && refill_trash){
	show_debug_message("HERE");
	contained_stack = scr_trash_stack_generator(x, y);
	refill_trash = false
}
if(night){
	refill_trash = true;
}

// closes the trash can if the player moves away from it
var player = instance_place(x, y, obj_player);
if !instance_exists(player){
	open = false;
	interactions = 0;
}

// what to do when the trash can is opened and closed
if(contained_stack != noone)
	if(open){
	
		contained_stack.sprite_index = contained_stack.in_game_sprite_index;
	
		if(instance_exists(player) && player.interact){
			// we want the second interaction button to send stack to inventory
			interactions++;
		
			if(interactions >= 2){
				// Try to send stack to the inventory
				if(scr_place_in_inventory(contained_stack)){
					contained_stack = noone;
				}
			}
		}
	}else{
		contained_stack.sprite_index = noone;
	}
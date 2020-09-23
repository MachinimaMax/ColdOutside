/// @description Insert description here
// You can write your code in this editor

// closes the trash can if the player moves away from it
var player = instance_place(x, y, obj_player);
if !instance_exists(player){
	open = false;
	interactions = 0;
}

// what to do when the trash can is opened and closed
if(open){
	with(contained_stack){
		sprite_index = static_sprite_index;
	}
	if(instance_exists(player) && player.interact){
		// we want the second interaction button to send stack to inventory
		interactions++;
		
		if(interactions >= 2){
			// Try to send stack to the inventory
			show_debug_message("send stack to inventory")
		}
	}
}else{
	with(contained_stack){
		sprite_index = noone;
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// List of stack types:

// HUNGER
// candy_bar

function src_stack_constructor(stack_id, _x, _y){
	
	// setup
	var new_stack;
	if(_x == noone || _y == noone){
		new_stack = instance_create_depth(0, 0, 0, obj_stack);
	}else{
		new_stack = instance_create_depth( _x, _y, 0, obj_stack);
	}
	
	with(new_stack){
		
		// candy_bar stack
		if(stack_id == "candy_bar"){
			stack_type = "candy_bar";
			in_game_sprite_index = spr_candy_bar;
			gui_sprite_index = spr_inv_candy_bar;
			stack_limit = 3;
			stack_count = 1;
			resource = "hunger";
			amount = .05;
		}
		
		// newspaper stack
		else if(stack_id == "newspaper"){
			stack_type = "newspaper";
			in_game_sprite_index = spr_newspaper;
			gui_sprite_index = spr_inv_newspaper;
			stack_limit = 5;
			stack_count = 3;
			resource = "warmth";
			amount = .05;
		}
	}
	
	return new_stack;
}
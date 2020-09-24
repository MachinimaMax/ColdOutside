/// @description Insert description here
// You can write your code in this editor

open = false;
interactions = 0;

// create internal stack
// TODO: internal stacks should be generated dynamically
stack_sprite_index = spr_candy_bar;
stack_gui_sprite_index = spr_inv_candy_bar;
contained_stack = instance_create_depth(x, y, 0, obj_stack);

with(contained_stack){
	stack_type = "candy_bar";
	in_game_sprite_index = other.stack_sprite_index;
	gui_sprite_index = other.stack_gui_sprite_index;
	stack_limit = 6;
	stack_count = 5;
}
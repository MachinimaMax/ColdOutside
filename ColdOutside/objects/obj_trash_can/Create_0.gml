/// @description Insert description here
// You can write your code in this editor

open = false;
interactions = 0;

// create internal stack
stack_sprite_index = spr_candy_bar;
contained_stack = instance_create_depth(x, y, 0, obj_stack);

with(contained_stack){
	stack_type = "candy_bar";
	static_sprite_index = other.stack_sprite_index;
}
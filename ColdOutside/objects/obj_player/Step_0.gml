/// @description Insert description here
// You can write your code in this editor

src_player_inputs();
src_check_collision(obj_whitebox_temp);
src_interaction();
scr_resources();
src_pickup();
scr_movement();

calculated_morale = (hunger_percentage * hunger) + (warmth_percentage * warmth)
	+ ((1-(warmth_percentage + hunger_percentage)) * base_morale);
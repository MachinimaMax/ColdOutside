/// @description Insert description here
// You can write your code in this editor

src_player_inputs();
src_check_collision(obj_whitebox_temp);

// claculate morale
calculated_morale = (hunger_percentage * hunger) + (warmth_percentage * warmth)
	+ ((1-(warmth_percentage + hunger_percentage)) * base_morale);

src_pickup();
scr_movement();


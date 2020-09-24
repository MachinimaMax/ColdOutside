/// @description Insert description here
// You can write your code in this editor

scr_resources();

calculated_morale = (hunger_percentage * hunger) + (warmth_percentage * warmth)
	+ ((1-(warmth_percentage + hunger_percentage)) * base_morale);
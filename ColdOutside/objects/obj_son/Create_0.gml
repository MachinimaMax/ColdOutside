/// @description Insert description here
// You can write your code in this editor

hunger = .611;
warmth = .611;

// calculated morale is affected by base_morale, hunger, and warmth
// Hunger and warmth will affect the total of calculated morale by 20% each if they are full.
// As they lower they have an increasing affect on calculated morale up to 50% each.
base_morale = .211
hunger_percentage = .5 - .3*hunger;
warmth_percentage = .5 - .3*warmth;

calculated_morale = (hunger_percentage * hunger) + (warmth_percentage * warmth)
	+ ((1-(warmth_percentage + hunger_percentage)) * base_morale);

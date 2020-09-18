/// @description Insert description here
// You can write your code in this editor

// start position
x = camera_get_view_width(view_camera[0])/2 - sprite_width/2;
y = camera_get_view_height(view_camera[0])/1.5 - sprite_height/2;

// Initialize movement variables
left = 0;
right = 0;

up = 0;
down = 0;

move_speed = 4;
default_move_speed = move_speed;

// Resource stats

money = 0;
// [0,1] percentage, higher is better
hunger = .6;
warmth = .6;

// calculated morale is affected by base_morale, hunger, and warmth
// Hunger and warmth will affect the total of calculated morale by 20% each if they are full.
// As they lower they have an increasing affect on calculated morale up to 50% each.
base_morale = .2
hunger_percentage = .5 - .3*hunger;
warmth_percentage = .5 - .3*warmth;

calculated_morale = (hunger_percentage * hunger) + (warmth_percentage * warmth)
	+ ((1-(warmth_percentage + hunger_percentage)) * base_morale);


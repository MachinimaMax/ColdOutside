/// @description Insert description here
// You can write your code in this editor

// start position
x = camera_get_view_width(view_camera[0])/2 - sprite_width/2;
y = camera_get_view_height(view_camera[0])/2 - sprite_height/2;

// Initialize movement variables
left = 0;
right = 0;

up = 0;
down = 0;

move_speed = 3;

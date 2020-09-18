// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_check_collision(check_object){
	
	if place_meeting(x + (right - left) * move_speed, y, check_object){
		right = 0;
		left = 0;
	}
	
	if place_meeting(x, y + (down - up) * move_speed, check_object){
		up = 0;
		down = 0;
	}
	
}
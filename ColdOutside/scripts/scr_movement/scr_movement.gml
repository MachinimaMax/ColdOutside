// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement(){
	x += (right - left) * move_speed;
	//y += (down - up) * move_speed;
	
	move_speed = default_move_speed;
}
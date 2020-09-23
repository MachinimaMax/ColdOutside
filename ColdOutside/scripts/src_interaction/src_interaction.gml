// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_interaction(){
	var trash_can = instance_place(x, y, obj_trash_can);

	if(interact){
		// if player 
		if trash_can != noone with (trash_can){
			open = true;
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_resources(){
	
	// if player is walking increase hunger quicker
	if(right - left != 0){
		hunger -= .00002;
	}
	
	// base hunger loss
	hunger -= .000008;
	
	// warmth loss
	if (place_meeting(x , y, obj_trash_fire)){
		show_debug_message("TOUCHING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		warmth += .00015;
		if (warmth < 1){
			warmth += .00015;
		}
	}
	
	if(day){
		warmth -= .000003
	}else{
		warmth -= .0001
	}
	
}
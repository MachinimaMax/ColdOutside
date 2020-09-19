// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_resources(){
	
	// if player is walking increase hunger quicker
	if(right - left != 0 && hunger > 0){
		hunger -= .00002;
	}
	
	// base hunger loss
	if (hunger > 0){
		hunger -= .000008;
	}
	
	// warmth loss
	trash_fire_intance = instance_place(x, y, obj_trash_fire);
	if trash_fire_intance != noone with (trash_fire_intance){
		if(other.warmth < 1){
			other.warmth += .0003;
		}
	}
	
	if(warmth > 0){
		if(day){
			warmth -= .000003
		}else{
			warmth -= .00015
		}
	}
	
	
}
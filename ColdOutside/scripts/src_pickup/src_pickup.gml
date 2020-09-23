// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_pickup(){
	money_pickup = instance_place(x, y, obj_money);
	hunger_pickup = instance_place(x, y, obj_food);
	clothing_pickup = instance_place(x, y, obj_clothing);
	morale_pickup = instance_place(x, y, obj_morale);
	
	if(interact){
			// money
		if money_pickup != noone with (money_pickup){
			other.money += 1;
			instance_destroy();
		}
	
		// food/hunger
		// TODO: food should be added to an inventory not eaten immediatly
		if hunger_pickup != noone with (hunger_pickup){
			other.hunger += .05;
			instance_destroy();
		}
	
		// clothing/warmth
		// TODO: clothing should be added to an inventory system
		if clothing_pickup != noone with (clothing_pickup){
			other.warmth += .20;
			instance_destroy();
		}
	
		// clothing/warmth
		// TODO: clothing should be added to an inventory system
		if morale_pickup != noone with (morale_pickup){
			if(other.base_morale < 1){
			other.base_morale += .20;
			}
			instance_destroy();
		}
	
		// claculate morale
		calculated_morale = (hunger_percentage * hunger) + (warmth_percentage * warmth)
		+ ((1-(warmth_percentage + hunger_percentage)) * base_morale);
	}
	
	
	
	// check items being calculated at the same time and exceeding their cap
	if(base_morale > 1){base_morale = 1;}
	if(calculated_morale > 1){calculated_morale = 1;}
	if(warmth > 1){warmth = 1;}
	if(hunger > 1){hunger = 1;}
	
}
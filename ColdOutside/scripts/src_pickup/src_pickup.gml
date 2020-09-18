// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_pickup(){
	money_pickup = instance_place(x, y, obj_money);
	hunger_pickup = instance_place(x, y, obj_food);
	clothing_pickup = instance_place(x, y, obj_clothing);
	morale_pickup = instance_place(x, y, obj_morale);
	
	// money
	// player variables cannot be set within another instance
	temp_money = 1;
	if money_pickup != noone with (money_pickup){
		instance_destroy();
	}
	else{
		temp_money = 0;
	}
	money += temp_money;
	
	// food/hunger
	// TODO: food should be added to an inventory not eaten immediatly
	temp_food = 1;
	if hunger_pickup != noone with (hunger_pickup){
		instance_destroy();
	}
	else{
		temp_food = 0;
	}
	
	if(temp_food && hunger < 1){
			hunger += .05;
	}
	
	// clothing/warmth
	// TODO: clothing should be added to an inventory system
	temp_clothing = 1;
	if clothing_pickup != noone with (clothing_pickup){
		instance_destroy();
	}
	else{
		temp_clothing = 0;
	}
	
	if(temp_clothing && warmth < 1){
		warmth += .20;
	}
	
	// clothing/warmth
	// TODO: clothing should be added to an inventory system
	temp_morale = 1;
	if morale_pickup != noone with (morale_pickup){
		instance_destroy();
	}
	else{
		temp_morale = 0;
	}
	
	if(temp_morale && base_morale < 1){
		base_morale += .20;
	}
	
	// claculate morale
	calculated_morale = (hunger_percentage * hunger) + (warmth_percentage * warmth)
	+ ((1-(warmth_percentage + hunger_percentage)) * base_morale);
	
	// check items being calculated at the same time and exceeding their cap
	if(base_morale > 1){base_morale = 1;}
	if(calculated_morale > 1){calculated_morale = 1;}
	if(warmth > 1){warmth = 1;}
	if(hunger > 1){hunger = 1;}
	
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_pickup(){
	money_pickup = instance_place(x, y, obj_money);
	hunger_pickup = instance_place(x, y, obj_food);
	
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
}
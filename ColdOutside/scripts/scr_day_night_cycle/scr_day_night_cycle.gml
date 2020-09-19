// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_day_night_cycle(){
	if(day){
		if(day_timer > 0){
			day_timer--;
		}else{
			night = true
			night_timer = room_speed * night_length_minutes*60;
			day = false
		}
	}
	else if(night_timer > 0){
		night_timer--;
	}
	else{
		day = true;
		day_timer = room_speed * day_length_minutes * 60;
		night = false;
	}
}
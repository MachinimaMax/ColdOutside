/// @description Insert description here
// You can write your code in this editor

// day night cycle
day_length_minutes =  .3
night_length_minutes = .15
globalvar day;
day = true;
globalvar night;
night = false;
day_timer = room_speed * day_length_minutes*60;
night_timer = 0;
/// @description Insert description here
// You can write your code in this editor

// day night cycle
day_length_minutes =  .1
night_length_minutes = .05
globalvar day;
day = true;
globalvar night;
night = true;
day_timer = room_speed * day_length_minutes*60;
night_timer = 0;
/// @description Insert description here
// You can write your code in this editor

gui_y = camera_get_view_width(view_camera[0])/50;
gui_width = camera_get_view_width(view_camera[0]);
gui_morale_x = gui_width/20 + 50
gui_warmth_x = gui_width/3.8 + 50
gui_hunger_x = gui_width/2.1 + 50
gui_money_x = gui_width/1.45 + 50

draw_text_colour(gui_morale_x, gui_y, "Morale: " + string(calculated_morale*100)+ "%", c_blue, c_blue, c_blue, c_blue, 1);
draw_text_colour(gui_warmth_x, gui_y, "Warmth: " + string(warmth*100)+"%", c_red, c_red, c_red, c_red, 1);
draw_text_colour(gui_hunger_x, gui_y, "Hunger: " + string(hunger*100)+"%", c_purple, c_purple, c_purple, c_purple, 1);
draw_text_colour(gui_money_x, gui_y, "Money: $" + string(money) + ".00", c_yellow, c_yellow, c_yellow, c_yellow, 1);

if(day){
	draw_text(80, 40, "DAY");}
else{
	draw_text(80, 40, "NIGHT");}
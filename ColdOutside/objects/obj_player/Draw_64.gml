/// @description Insert description here
// You can write your code in this editor


// temp way to display resource values and day/night
gui_y = camera_get_view_width(view_camera[0])/50;
gui_width = camera_get_view_width(view_camera[0]);
offset = 130;
gui_name_x =  80;
gui_morale_x = gui_width/20 + offset;
gui_warmth_x = gui_width/3.8 + offset;
gui_hunger_x = gui_width/2.1 + offset;
gui_money_x = gui_width/1.45 + offset;

draw_text_colour(gui_name_x, gui_y, "Player", c_black, c_black, c_black, c_black, 1);
draw_text_colour(gui_morale_x, gui_y, "Morale: " + string(calculated_morale*100)+ "%", c_blue, c_blue, c_blue, c_blue, 1);
draw_text_colour(gui_warmth_x, gui_y, "Warmth: " + string(warmth*100)+"%", c_red, c_red, c_red, c_red, 1);
draw_text_colour(gui_hunger_x, gui_y, "Hunger: " + string(hunger*100)+"%", c_purple, c_purple, c_purple, c_purple, 1);
draw_text_colour(gui_money_x, gui_y, "Money: $" + string(money) + ".00", c_yellow, c_yellow, c_yellow, c_yellow, 1);

family01 = instance_find(family_member, 0);
if(instance_exists(family01)){
	with(family01){
		draw_text_colour(other.gui_name_x, other.gui_y + 30, "Son", c_black, c_black, c_black, c_black, 1);
		draw_text_colour(other.gui_morale_x, other.gui_y + 30, "Morale: " + string(calculated_morale*100)+ "%", c_blue, c_blue, c_blue, c_blue, 1);
		draw_text_colour(other.gui_warmth_x, other.gui_y + 30, "Warmth: " + string(warmth*100)+"%", c_red, c_red, c_red, c_red, 1);
		draw_text_colour(other.gui_hunger_x, other.gui_y + 30, "Hunger: " + string(hunger*100)+"%", c_purple, c_purple, c_purple, c_purple, 1);
	}
}

if(day){
	draw_text(gui_name_x, 80, "DAY");}
else{
	draw_text(gui_name_x, 80, "NIGHT");}
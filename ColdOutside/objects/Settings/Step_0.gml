/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_escape)){
	game_end();	
}

if keyboard_check_pressed(ord("R")){
	show_debug_message("restart");
	game_restart();
}
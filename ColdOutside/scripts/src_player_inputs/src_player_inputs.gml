// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_player_inputs(){
	
	// Movement inputs
	left =  keyboard_check(vk_left) || keyboard_check(ord("A"));
	right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	up =  keyboard_check(vk_up) || keyboard_check(ord("W"));
	down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
	// interaction input
	interact = keyboard_check(ord("E"));
	
	// family menu input
	family_menu_on = keyboard_check(vk_tab);
	
}
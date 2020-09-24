// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_player_inputs(){
	
	// Movement inputs
	left =  keyboard_check(vk_left) || keyboard_check(ord("A"));
	right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	up =  keyboard_check(vk_up) || keyboard_check(ord("W"));
	down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
	// interaction input
	//interact = keyboard_check_pressed(ord("E"));
	interact = keyboard_check_pressed(vk_space);
	
	// family menu input
	family_menu_on = keyboard_check(vk_tab);
	
	//clicks
	left_click = mouse_check_button(mb_left);
	right_click = mouse_check_button(mb_right);
	
}
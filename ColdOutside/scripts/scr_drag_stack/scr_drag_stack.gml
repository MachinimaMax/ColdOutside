// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drag_stack(mouseX, mouseY){
	
	player_reference =  instance_find(obj_player, 0);

	if(player_reference.right_click){
		return false;
	}
	
	
	// what to do for left clicks
	if(player_reference.left_click){
	
		if(position_meeting(mouse_x, mouse_y, obj_player)){
			show_debug_message("give item to player");
			player_reference.left_click = 0;
		}
	
	}
	
	return true

}
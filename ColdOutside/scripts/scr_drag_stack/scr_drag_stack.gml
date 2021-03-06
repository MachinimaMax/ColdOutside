// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drag_stack(mouseX, mouseY, _stack){
	
	player_reference =  instance_find(obj_player, 0);
	family_reference =  instance_find(family_member, 0);

	if(player_reference.right_click){
		return false;
	}
	
	
	// what to do for left clicks
	if(player_reference.left_click){
	
		if(position_meeting(mouse_x, mouse_y, obj_player)){
			scr_send_stack_to_charachter(player_reference, _stack)
			if(_stack.stack_count <= 0){
				return false;
			}
			player_reference.left_click = 0;
		}
		else if(position_meeting(mouse_x, mouse_y, family_member)){
			scr_send_stack_to_charachter(family_reference, _stack)
			if(_stack.stack_count <= 0){
				return false;
			}
			player_reference.left_click = 0;
		}
	
	}
	
	return true

}
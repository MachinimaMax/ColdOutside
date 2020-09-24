// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_stack_to_charachter(character, _stack){

	if(_stack.stack_count <= 0){
		return;
	}
	
	else if(_stack.resource == "warmth"){
		character.warmth += _stack.amount;
		_stack.stack_count -= 1;
	}

	else if(_stack.resource == "hunger"){
		character.hunger += _stack.amount;
		_stack.stack_count -= 1;
	}
	
	else if(_stack.resource == "morale"){
		character.morale += _stack.amount;
		_stack.stack_count -= 1;
	}
	
}
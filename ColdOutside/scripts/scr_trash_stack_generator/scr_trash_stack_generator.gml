// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trash_stack_generator(_x, _y){
	
	result = irandom(4);
	
	switch(result){
		case 0:
		case 1:
			return src_stack_constructor("newspaper", _x, _y);
		case 2:
		case 3:
			return src_stack_constructor("candy_bar", _x, _y);
	}
	return noone;
	
}
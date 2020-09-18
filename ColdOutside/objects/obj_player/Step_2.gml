/// @description Move the view

#region MOVE THE VIEW

halfViewWidth = camera_get_view_width(view_camera[0])/2 - sprite_width/2;
halfViewWidthRightLimit = camera_get_view_width(view_camera[0])/2 + sprite_width/2;

if(x > halfViewWidth && x < room_width-halfViewWidthRightLimit){
	camera_set_view_pos(view_camera[0], x - halfViewWidth, camera_get_view_y(view_camera[0]));
}

#endregion

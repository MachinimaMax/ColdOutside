/// @description Move the view

#region MOVE THE VIEW

halfViewWidth = camera_get_view_width(view_camera[0])/2 - sprite_width/2;
halfViewHeight = camera_get_view_height(view_camera[0])/2 - sprite_height/2;

camera_set_view_pos(view_camera[0], x - halfViewWidth, y - halfViewHeight);

#endregion

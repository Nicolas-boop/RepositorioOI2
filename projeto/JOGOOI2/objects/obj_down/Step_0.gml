if global.checkmobile {
	image_alpha = 255;

if (mouse_check_button(mb_left))
{
    if (position_meeting(mouse_x, mouse_y, id))
    {
		obj_player._down = 1;
		image_index = 1;
    }else{
	
	image_index = 0;
		
}
}else{
	
	image_index = 0;
		
}
}else{

image_alpha = 0;	
	
}
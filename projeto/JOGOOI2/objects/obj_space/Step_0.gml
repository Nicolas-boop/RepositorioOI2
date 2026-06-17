if global.checkmobile and global.espacovisivel{
	
	image_alpha = 255;

if (mouse_check_button(mb_left))
{
    if (position_meeting(mouse_x, mouse_y, id))
    {
		global.espacomobile = true;
		image_index = 1;
    }else{
	
	global.espacomobile = false;
	image_index = 0;
		
}
}else{
	
	image_index = 0;
		
}
}else{

image_alpha = 0;	
	
}
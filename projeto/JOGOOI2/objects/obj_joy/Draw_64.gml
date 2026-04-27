#region joystick
	#region variaveis
	
		var _x1 = device_mouse_x_to_gui(0);
		var _y1 = device_mouse_y_to_gui(0);
		var _escala2 = 0.3

		var _cor = c_white

		var _xd = 192
		var _yd = 512

		var _sobre = point_in_circle(_x1, _y1, _xd, _yd, 256/2) 
		var _toque = device_mouse_check_button(0 , mb_left);
		
	#endregion 
	#region joystick 
		if (_sobre or fazer){
	
	
			if (_toque) {
		
				var _dist =point_distance( _xd, _yd, _x1, _y1);
				var _dir = point_direction(_xd, _yd, _x1, _y1);
				vel = min(_dist, sprite_width)
				dir = _dir

				fazer = true;
			}
		}

		if !_toque{
	
			fazer = false;
			vel = lerp(vel, 0, 0.15)
		
		}
	#endregion
	#region draw final
		draw_sprite_ext(spr_joy, sprite_index, _xd, _yd, 1, 1, 0,  _cor, 0.6);
		var _xx, _yy;
		_xx = lengthdir_x(vel, dir)
		_yy = lengthdir_y(vel, dir)
		draw_sprite_ext(spr_joy, sprite_index, _xd + _xx, _yd + _yy, _escala2 ,  _escala2, 0, _cor, 0.8);
	#endregion
#endregion
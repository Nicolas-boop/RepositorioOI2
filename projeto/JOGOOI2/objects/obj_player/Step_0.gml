#region mov
	
	#region mudando keymap
		
		keyboard_set_map(ord("A"), vk_left);
		keyboard_set_map(ord("W"), vk_up);
		keyboard_set_map(ord("S"), vk_down);
		keyboard_set_map(ord("D"), vk_right);

		
	#endregion
	
	//Checando movimento
	var _left = keyboard_check(vk_left);
	var _right = keyboard_check(vk_right);
	var _up = keyboard_check(vk_up);
	var _down = keyboard_check(vk_down);
	//Variáveis de velocidade
	var _modspeed = 2;
	var _xspeed = (_right - _left) * _modspeed;
	var _yspeed = (_down  - _up)   * _modspeed;
	#region mov and collide
	
		move_and_collide(_xspeed, _yspeed, obj_colision, 12);
		
	#endregion


#endregion


#region mov
	
	#region mudando keymap
		
		keyboard_set_map(ord("A"), vk_left);
		keyboard_set_map(ord("W"), vk_up);
		keyboard_set_map(ord("S"), vk_down);
		keyboard_set_map(ord("D"), vk_right);

		
	#endregion
	
	//Checando movimento
	var _left	= keyboard_check(vk_left);
	var _right	= keyboard_check(vk_right);
	var _up		= keyboard_check(vk_up);
	var _down	= keyboard_check(vk_down);
	//Variáveis de velocidade
	var _modspeed = 2;
	
	#region movimento joy
		
		var _xleng = lengthdir_x(obj_joy.vel, obj_joy.dir);
		var _yleng = lengthdir_y(obj_joy.vel, obj_joy.dir);
		var _xd = 0;
		var _yd = 0;
		if(_xleng < 0){
			
			_xd = _xleng / 128;
				
		}
		if(_xleng > 0){
			
			_xd = _xleng / 128;
			
						
		}
		if(_yleng < 0){
			
			_yd = _yleng / 128;
			
		}
		if(_yleng > 0){
			
			_yd = _yleng / 128;
			
		}
	
		
		
		
		
		
	#endregion
	var _xspeed   = (_right - _left + _xd) * _modspeed ;
	var _yspeed   = (_down  - _up + _yd)   * _modspeed ;
	
	#region mov and collide
	

		//colisão  terminal
		if (place_meeting(x + _xspeed, y + _yspeed, obj_terminal)){
		
			
		_xspeed = 0;
		_yspeed = 0;
		
		}
				//colisao parede / movimento
		move_and_collide(_xspeed, _yspeed, obj_colision, 12);
		
	#endregion


#endregion

#region pode clicar
	
	if(place_meeting(x, y, obj_col_terminal)){
		
		global.podeclicar = true;
		
		
	}else{
		
		global.podeclicar =  false;
		
	}
	
global.salaatual = room;

#endregion

#region spritesandar
	
	//var def
	var _upwalk, _upidle, _leftwalk, _leftidle, _rightwalk, _rightidle, _downidle, _downwalk;

	
	#region definindo personagem 
	
	if global.personagem == 1{
		
		_upwalk    = spr_personagem1_upwalk;
		_upidle    = spr_personagem1_upidle;
		_downidle  = spr_personagem1_downidle;
		_downwalk  = spr_personagem1_downwalk;
		_leftidle  = spr_personagem1_leftidle;
		_leftwalk  = spr_personagem1_leftwalk;
		_rightidle = spr_personagem1_rightidle;
		_rightwalk = spr_personagem1_rightwalk;
			
	}else if global.personagem == 2{
		
		_upwalk    = spr_personagem2_upwalk;
		_upidle    = spr_personagem2_upidle;
		_downidle  = spr_personagem2_downidle;
		_downwalk  = spr_personagem2_downwalk;
		_leftidle  = spr_personagem2_leftidle;
		_leftwalk  = spr_personagem2_leftwalk;
		_rightidle = spr_personagem2_rightidle;
		_rightwalk = spr_personagem2_rightwalk;
	
	
	}

	

	#endregion
	
if _yspeed > 0 {
		
	sprite_index = _downwalk;
		
}else if _yspeed < 0{
		
	sprite_index = _upwalk;
	
}else if _xspeed > 0 and _yspeed = 0{
		
	sprite_index = _rightwalk;
		
}else if _xspeed <0 and _yspeed = 0{
		
	sprite_index = _leftwalk;
		
}else if _yspeed == 0 and _xspeed == 0{
		
	if  sprite_index == _downwalk{
			
		sprite_index = _downidle;
		
		
	}else if sprite_index == _upwalk{
			
		sprite_index = _upidle;
			
		
	}else if sprite_index ==_rightwalk{
			
		sprite_index = _rightidle;

		
	}else if sprite_index == _leftwalk{
			
		sprite_index = _leftidle;
			
	}
		
}

#endregion
#region mov
	
	#region espaco mobile
	
	if !position_meeting(x, y, obj_colterminal) and !position_meeting(x, y, obj_colterminallav){
		
			global.espacovisivel = false;

		
	}
	
	#endregion
	
	#region mudando keymap
		
		keyboard_set_map(ord("A"), vk_left);
		keyboard_set_map(ord("W"), vk_up);
		keyboard_set_map(ord("S"), vk_down);
		keyboard_set_map(ord("D"), vk_right);

		
	#endregion
	
	//Checando movimento
	 _left	= keyboard_check(vk_left);
	 _right	= keyboard_check(vk_right);
	 _up	= keyboard_check(vk_up);
    _down	= keyboard_check(vk_down);
	//Variáveis de velocidade

	


	



#endregion

#region pode clicar
	

	
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
	
	
	}else if global.personagem == 3{
		
		_upwalk    = spr_personagem3_upwalk;
		_upidle    = spr_personagem3_upidle;
		_downidle  = spr_personagem3_downidle;
		_downwalk  = spr_personagem3_downwalk;
		_leftidle  = spr_personagem3_leftidle;
		_leftwalk  = spr_personagem3_leftwalk;
		_rightidle = spr_personagem3_rightidle;
		_rightwalk = spr_personagem3_rightwalk;
		
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
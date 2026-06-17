#region criando instancia nova, e selecionando qual é ela

	audio_play_sound(snd_clickmobile, 0, false);

	
	var _inst = instance_position(mouse_x, mouse_y, all);
	var _textolixo = 0;
	
	
    if global.idp != _inst.idp{
	
		global.instance = _inst;
		global.idp		= _inst.idp;
		global.texto	= _inst.texto;
		_textolixo	= _inst.texto;


		instance_create_layer(xp, yp, "textbox", obj_caixadetexto);
		
	
	}else{
	
		global.idp =		 -3;
		global.instance = noone;

	} 

#endregion 


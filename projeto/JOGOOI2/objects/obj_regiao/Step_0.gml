
if global.onetimelav{
	
		var _lista = ds_list_create()

	var _qtd = instance_place_list(x, y, obj_circulo, _lista, false);

	if _qtd != numeroregioes{
	
				audio_play_sound(snd_clickerr, 0, false);
		global.check = false;
		global.onetimelav2 = true;
		global.certos += numeroregioes;
		global.controleatual.erros -= numeroregioes;
	
	}else{
		
	

		
	}
	
	
	ds_list_destroy(_lista);
	
}
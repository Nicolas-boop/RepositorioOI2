#region onetimelav1
	if global.onetimelav == true{
	
		global.onetimelav = false;
	
	}

	if global.check{
	
		global.acertou = true;
		global.check   = false;
		
		
		
			
	}else{
		
		
	}	

	if global.acertou{
		
		audio_play_sound(snd_clickcert, 0, false);
		if room = rm_lav3{
			
			global.caminho3pronto = true;
			
		}
		global.acertou = false;
		room_goto(proxroom);
	}
#endregion

#region onetimelav2


	
#endregion
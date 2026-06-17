#region mandando pra room
	
	if other.bloqueado{}
	else{
		
		room_goto(other.destino)
	}
	
	audio_play_sound(snd_click, 0, false);

#endregion
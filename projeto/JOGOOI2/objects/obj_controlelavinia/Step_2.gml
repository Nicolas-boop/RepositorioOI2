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
	
		global.acertou = false;
		room_goto(rm_lav2);
	}
#endregion

#region onetimelav2


	
#endregion
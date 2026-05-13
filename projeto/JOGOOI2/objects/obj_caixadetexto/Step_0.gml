#region animação de criação
	
	scale = lerp(scale, tamfinal, ospeed)
	scaley = lerp(scaley, tamfinal, ospeed + 0.15);
	var _onetime = false;

	image_xscale = scale;
	image_yscale = scaley;


	#region animação de escrita
	
		if chars < string_length(texto){
	
				chars += vel;
	
			}
	
	#endregion

#endregion

#region checando se existe outra com texto diferente (sistema de apenas uma)

if(global.texto != texto) or global.idp == -3{
	
	texto = global.texto;
	tamfinal = 0;
	alarm[0] = 30;
}




#endregion

audio_play_sound(snd_clickmobile, 0, false);

if adicionar {
	
	global.restpersonagem ++;
	
}else{

	global.restpersonagem --; 
	
}
	
var _abs, _rest;

_abs  = abs(global.restpersonagem);

_rest = _abs%3;

if _rest == 0{

	global.personagem = 1;	
	
}else if _rest == 1{
	
	global.personagem = 2;
	
}else if _rest == 2{
	
	global.personagem = 3;
	
}

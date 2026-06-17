#region setup basico
	
	draw_self();

	draw_set_font(fnt_caixadialogo);
	draw_set_valign(0);
	draw_set_halign(0);

#endregion

#region desenhando texto

var _marg = 6;

var _x = x - sprite_width/2  + _marg;
var _y = y - sprite_height/2 + _marg;
var _texto = string_copy(texto, 1, floor(chars));
if(scale > 0.90 and scaley > 0.90){
draw_text_ext_transformed( _x , _y, _texto, 60, sprite_width*4.75, 0.2*4/3, 0.2*4/3, 0);
}

draw_set_font(-1);
#endregion
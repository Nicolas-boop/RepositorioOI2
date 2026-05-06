global.showtextbox = !global.showtextbox;

if global.showtextbox{
	
	instance_create_layer(336, 91, "texbox", obj_caixadetexto);
		
	global.showtextbox = false;
}
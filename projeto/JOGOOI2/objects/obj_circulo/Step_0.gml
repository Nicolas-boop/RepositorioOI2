if global.onetimelav2{

	if place_meeting(x, y, obj_regiao){
		
		instance_create_layer(x, y, "circulos", obj_circulocerto);
		instance_destroy();
		
	}else{
		
		instance_destroy();
		
	}
	
}

if array_contains(global.circulos, id){
	
	
}else{
	
	instance_destroy();
	
}


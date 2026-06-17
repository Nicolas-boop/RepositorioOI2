if global.onetimelav2{

	if place_meeting(x, y, obj_regiao){
		
		instance_create_layer(x, y, "circulos", obj_circulocerto);
		instance_destroy();
	
	}else{
		
		alarm[0] = game_get_speed(gamespeed_fps) * 0.25;
		
	}
	
}

if array_contains(global.circulos, id){
	
	
}else{
	
	instance_destroy();
	
}


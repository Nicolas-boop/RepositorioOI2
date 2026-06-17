if keyboard_check_released(vk_space) or global.espacomobile == true{
	
	audio_play_sound(snd_transroomsgame, 0, false);
	room_goto(rm_12);
	

}

	global.espacovisivel = true;

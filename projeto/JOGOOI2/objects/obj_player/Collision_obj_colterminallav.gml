if keyboard_check_released(vk_space) or global.espacomobile == true{
	
	room_goto(rm_lav1);

	audio_play_sound(snd_transroomsgame, 0, false);


}

	global.espacovisivel = true;

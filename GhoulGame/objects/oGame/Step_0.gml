if keyboard_check_pressed(vk_escape){
	fullscr = !fullscr;
	window_set_fullscreen(fullscr);
}





if instance_exists(oPlayer){
	if oPlayer.state != "Dead"{
	var healthPercent = (oPlayer.hp/oPlayer.max_hp)*100;
	if healthPercent <= 50{
		if !audio_is_playing(snd_EeriePanic){
			pos = audio_sound_get_track_position(snd);
			audio_stop_sound(snd);
	//show_message(pos);
	
		snd= audio_play_sound(snd_EeriePanic,1,true);
		audio_sound_set_track_position(snd,pos);
		}
	}else{
		if !audio_is_playing(snd_Eerie){
		pos = audio_sound_get_track_position(snd);
			audio_stop_sound(snd);
	//show_message(pos);
	
		snd= audio_play_sound(snd_Eerie,1,true);
		audio_sound_set_track_position(snd,pos);
	}
	}
	}
}
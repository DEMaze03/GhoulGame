audio_stop_sound(snd);

if state == "Yes" && !audio_is_playing(snd_EeriePanic){
	pos = audio_sound_get_track_position(snd);
	//show_debug_message(pos);
		audio_play_sound(snd_EeriePanic,1,true);
		audio_sound_set_track_position(snd_EeriePanic,pos);
}if state == "No" && !audio_is_playing(snd_Eerie){
		pos = audio_sound_get_track_position(snd);
		snd = snd_Eerie;
		audio_play_sound(snd,1,true);
		audio_sound_set_track_position(snd,pos);
	}
	
	instance_destroy();
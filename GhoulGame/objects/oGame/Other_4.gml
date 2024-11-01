if room == Room1{
	audio_stop_all();
snd = audio_play_sound(snd_Eerie,1,true);
audio_sound_loop_start(snd,5.05);

audio_sound_loop(snd,true);
}
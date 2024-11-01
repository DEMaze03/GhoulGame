if room == Room1 || room == rmTutorial{
	audio_stop_all();
snd = audio_play_sound(snd_Eerie,1,true);
audio_sound_loop_start(snd,5.05);

audio_sound_loop(snd,true);
}

if room == Room4{
	audio_stop_all();
snd = audio_play_sound(sndending,1,true);

}

if room == rmTitle{
	audio_stop_all();
snd = audio_play_sound(sndTitle,1,true);
audio_sound_set_track_position(snd,97.41)
audio_sound_loop_start(snd,97.41);

audio_sound_loop(snd,true);
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function alexa_playsfx(){
	
	var sound = argument0
	var pitch = choose(0.9,1,1.1) 
	audio_play_sound(sound,1,false)
	var snd = audio_play_sound(sound, 1, false);
	audio_sound_pitch(snd, pitch);
	

}
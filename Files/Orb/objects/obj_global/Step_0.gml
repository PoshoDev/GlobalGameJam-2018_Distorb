/// @description 
if keyboard_check(vk_escape)
	game_end();
	
if keyboard_check(ord("R"))
	game_restart();
	
if (global.gamestart && !global.gameover && !audio_is_playing(msc_intro) && !audio_is_playing(msc_beat))
	audio_play_sound(msc_beat, global.sound_id++, 1);
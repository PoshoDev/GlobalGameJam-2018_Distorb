/// @description 

audio_play_sound(snd_explosion, global.sound_id++, 0);
audio_play_sound(snd_distorsion, global.sound_id++, 0);

image_xscale = 1.5;
image_yscale = 1.5;

if (x < room_width/2)
	sound_player_die(0);
else
	sound_player_die(1);
if (argument0 == 0)
{
	switch(irandom_range(0, 2))
	{
		case 0:
			audio_play_sound(snd_player_1_throw_1, global.sound_id++, false);
		break;
		
		case 1:
			audio_play_sound(snd_player_1_throw_2, global.sound_id++, false);
		break;
		
		case 2:
			audio_play_sound(snd_player_1_throw_3, global.sound_id++, false);
		break;
	}
		audio_play_sound(snd_throw_2, global.sound_id++, false);
}
else
{
	switch(irandom_range(0, 2))
	{
		case 0:
			audio_play_sound(snd_player_2_throw_1, global.sound_id++, false);
		break;
		
		case 1:
			audio_play_sound(snd_player_2_throw_2, global.sound_id++, false);
		break;
		
		case 2:
			audio_play_sound(snd_player_2_throw_3, global.sound_id++, false);
		break;
	}
	audio_play_sound(snd_throw_1, global.sound_id++, false);
}
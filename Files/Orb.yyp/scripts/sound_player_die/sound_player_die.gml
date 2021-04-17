function sound_player_die(argument0) {
	if (argument0 == 0)
	{
		switch(irandom_range(0, 3))
		{
			case 0:
				audio_play_sound(snd_player_1_die_1, global.sound_id++, false);
			break;
		
			case 1:
				audio_play_sound(snd_player_1_die_2, global.sound_id++, false);
			break;
		
			case 2:
				audio_play_sound(snd_player_1_die_3, global.sound_id++, false);
			break;
		
			case 3:
				audio_play_sound(snd_player_1_die_4, global.sound_id++, false);
			break;
		}
	}
	else
	{
		switch(irandom_range(0, 3))
		{
			case 0:
				audio_play_sound(snd_player_2_die_1, global.sound_id++, false);
			break;
		
			case 1:
				audio_play_sound(snd_player_2_die_2, global.sound_id++, false);
			break;
		
			case 2:
				audio_play_sound(snd_player_2_die_3, global.sound_id++, false);
			break;
		
			case 3:
				audio_play_sound(snd_player_2_die_4, global.sound_id++, false);
			break;
		}
	}


}

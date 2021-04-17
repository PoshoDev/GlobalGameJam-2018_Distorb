function gameover_start(argument0) {
	if (!global.gameover)
	{
		global.gameover = true;
		speed = 0;
	
		global.player0.hold = false;
		global.player1.hold = false;
	
		global.player0.moving = false;
		global.player1.moving = false;
	
		with all
		{
			image_speed = 0;	
		}
	
		alarm[1] = 30;
	
		if (argument0.object_index == obj_orb)
		{
			if (obj_orb.sprite_index == spr_orb_red)
				global.guilty = global.player0;
			else
				global.guilty = global.player1;
		}
		else
			global.guilty = argument0;
	
		instance_create_depth(argument0.x, argument0.y, -9999, obj_gameover_circle);
	
		audio_stop_sound(snd_hum_1);
		audio_stop_sound(snd_hum_2);
		audio_stop_sound(snd_voice_1);
		audio_stop_sound(snd_voice_2);
		audio_stop_sound(snd_elephant);
		audio_stop_sound(msc_beat);
		audio_stop_sound(msc_intro);
	
		audio_play_sound(snd_quack, global.sound_id++, 0);
	}


}

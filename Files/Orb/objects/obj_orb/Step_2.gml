/// @description
if (!global.gameover && global.gamestart != 0)
{
	if (global.orb_hold = 0)
		target = global.player0;
	else
		target = global.player1;

	if (reach)
	{
		x = target.x;
		y = target.y - offset_y;
	}
	else
	{
		move_towards_point(target.x, target.y-offset_y, range);
	
		if (x > target.x-(range/2) && x < target.x+(range/2) && y > target.y-offset_y-(range/2) && y < target.y-offset_y+(range/2))
			if (target.stand == 1)
			{
				reach = true;
				target.holding = 1;
				target.stand = 0;
				speed = 0;
				
				if (global.orb_hold == 0)
				{
					sprite_index = spr_orb_red;
					audio_pause_sound(snd_voice_2);
					if (audio_is_paused(snd_voice_1))
						audio_resume_sound(snd_voice_1);
					else
						audio_play_sound(snd_voice_1, 99, 1);
				}
				else
				{
					sprite_index = spr_orb_blue;
					audio_pause_sound(snd_voice_1);
					if (audio_is_paused(snd_voice_2))
						audio_resume_sound(snd_voice_2);
					else
						audio_play_sound(snd_voice_2, 99, 1);
				}
			}
			else if (!global.gameover)
			{
				if (global.orb_hold == 0)
					sprite_index = spr_orb_red;
				else
					sprite_index = spr_orb_blue;
				
				x = target.x;
				y = target.y-offset_y
				gameover_start(self);
			}
	}
}
else if (global.gameover_step == 1)
{
	if (obj_gameover_circle.step >= 3)
	{
		if (image_alpha > 0)
		{
			image_alpha -= 0.025;
		
			with (par_solid)
				image_alpha -= 0.025;
		}
		else
			global.gameover_step += 1;
		/*else
		{
			global.gameover_step = 0;
			global.gameover = 0;
			global.gamestart = 0;
		
			x = room_width/2;
			y = room_height/2+40;
		
			if (obj_player.gamepad_id == 1)
				put_x = room_width/3;
			else
				put_x = room_width/3*2;
			
			with (instance_create_depth(put_x, y, 1, obj_player))
				image_alpha = -1;
			
			with (obj_global)
			{
				alarm[0] = -1;
				alarm[1] = -1;
				alarm[2] = -1;
			}
		}*/
	}
}
else
	if (image_alpha < 1)
		image_alpha += 0.025;
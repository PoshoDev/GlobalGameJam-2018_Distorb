
depth = -y;

if (!global.gameover)
{
	if (gamepad_is_connected(gamepad_id))
	{
		/// ACTIONS
		if (holding)
		{
			if (obj_orb.reach && gamepad_button_check_released(gamepad_id, cont_parry)) // Passes
			{
				holding = 0;
		
				obj_orb.reach = false;
		
				if (global.orb_hold == 0)
					global.orb_hold = 1;
				else
					global.orb_hold = 0;
					
				//audio_stop_sound(snd_hum_1);
				//audio_stop_sound(snd_hum_2);
				sound_player_throw(gamepad_id);
			}
		}
		else
		{
			if (gamepad_button_check(gamepad_id, cont_parry)) // Receives
				stand = true;	
			else
				stand = false
		}
	
/// MOVEMENT
		// X Axis, sssson!!
		gamepad_x = gamepad_axis_value(gamepad_id, cont_move_h);
	
		speed_current = global.speed_mult;
		if (holding)
			speed_current /= 4;
		else if (stand)
			speed_current /= 8;
	
		if (gamepad_x > global.gamepad_deadzone)
		{
			if (x + (gamepad_x*speed_current) > pos_x_max)
				x = pos_x_max;
			else
				update_x(gamepad_x);
		}
		else if (gamepad_x < -global.gamepad_deadzone)
		{
			if (x + (gamepad_x*speed_current) < pos_x_min)
				x = pos_x_min;
			else
				update_x(gamepad_x);
		}
		else
		{
			move_x = false;
		}
	
		// Y Axis, ssssis!!
		gamepad_y = gamepad_axis_value(gamepad_id, cont_move_v);

		if (gamepad_y > global.gamepad_deadzone)
		{
			if (y + (gamepad_y*speed_current) > pos_y_max)
				y = pos_y_max;
			else
				update_y(gamepad_y);
		}
		else if (gamepad_y < -global.gamepad_deadzone)
		{
			if (y + (gamepad_y*speed_current) < pos_y_min)
				y = pos_y_min;
			else
				update_y(gamepad_y);
		}
		else
			move_y = false;
	}

	/// STAND STILL
	if (move_x || move_y)
	{
		moving = true;
		image_speed = 15;
	
		if (speed_tween < 1)
			speed_tween += 0.1
	}
	else
	{
		moving = false;
		image_speed = 0;
	
		speed_tween = 0;
	}

	/// TREMBLING
	if (holding)
	{
		tremble += tremble_speed * tremble_way;
	
		if (tremble >= tremble_max || tremble < -tremble_max)
			tremble_way *= -1;
	}
	else if (stand)
	{
		bump += bump_speed * bump_way;
	
		if (bump >= bump_max || bump < -bump_max+.1)
			bump_way *= -1;
	}
	else
	{
		tremble = 0;
		bump = 0;
	}
	
/// REVIVING
if (image_alpha < 1)
	image_alpha += 0.0125;
}
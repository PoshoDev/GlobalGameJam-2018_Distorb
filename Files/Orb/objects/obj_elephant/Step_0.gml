/// @description

if (!global.gameover)
{
	switch(step)
	{
		case 0:
			if (y < room_height/2)
			{
				move_towards_point(room_width/2, room_height/2, 12);
				angle += 6 * image_xscale;
			}
			else
			{
				step++;
				speed = 0;
				angle = 0;
			}
		break;
		
		case 1:
			scale_x += scale_x_speed * scale_x_way;
			if (scale_x >= scale_x_max || scale_x < -scale_x_max)
				scale_x_way *= -1;
	
			scale_y += scale_y_speed * scale_y_way;
			if (scale_y >= scale_y_max || scale_y < -scale_y_max)
				scale_y_way *= -1;
	
			angle += angle_speed * angle_way;
			if (angle >= angle_max || angle < -angle_max)
				angle_way *= -1;
	
			if (obj_orb.reach)
			{
				if (global.orb_hold == 0)
				{
					image_index = 1;
					target = global.player0;
				}
				else
				{
					image_index = 0;
					target = global.player1;
				}
			}
			
			move_towards_point(target.x, target.y, 6)
			
			if (x < target.x)
				image_xscale = -1;
			else
				image_xscale = 1;
		break;
	}
}
else
	speed = 0;
/// @description
switch(step)
{
	case 0:
		if (current > reach)
		{
			current -= 32;

			image_xscale = current;
			image_yscale = current;
		
			current_h /= 1.2;
			current_v /= 1.2;
			camera_set_view_size(view_camera[0], current_h, current_v);
		}
		else
		{
			alarm[0] = 15;
			step++;
		}
	break;

	case 2:
		if (current_h < 1920)
		{
			current_h *= 1.2;
			current_v *= 1.2;
			
			camera_set_view_size(view_camera[0], current_h, current_v);
		}
		else
		{
			step++;
			alarm[1] = 45;
			
			instance_create_depth(global.guilty.x, global.guilty.y, -1000, obj_explosion);
			
			with (global.guilty)				
			{
				instance_destroy();
				/*if (gamepad_id == 0)
					x = 0;
				else
					x = room_width
						
				image_alpha = -1;
					
				event_perform(ev_create, 0);*/
			}
		}
	break;
	
	case 3:
		current_x = irandom_range(-64, 64);
		current_y = irandom_range(-64, 64);
			
		view_xport[0] = 0 + current_x;
		view_yport[0] = 0 + current_y;
	break;
}
/// @description Spawning
if (!global.gameover)
{
	switch (irandom_range(0, 2))
	{
		case 0:
			instance_create_depth(0, room_height+200, 1, obj_tentacle);
		break;
	
		case 1:
			instance_create_depth(room_width, room_height+200, 1, obj_tentacle);
		break;
	
		case 2:
			instance_create_depth(room_width/2, room_height+200, 1, obj_spikewall);
		break;
	}

	if (spawn_step = 0)
		alarm[0] = 60;
	else
		alarm[0] = 30;
}
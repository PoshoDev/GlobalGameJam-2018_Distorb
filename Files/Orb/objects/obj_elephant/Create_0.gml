/// @description 
image_speed = 0;
image_alpha = 0.75;

if (global.orb_hold == 0)
{
	image_xscale = 1;
	image_index = 1;
	target = global.player0;
}
else
{
	image_xscale = -1;
	image_index = 0;
	target = global.player1;
}

x = room_width/2;
y = -180;

step = 0;

scale_x = 0;
scale_x_way = 1;
scale_x_max = 0.25;
scale_x_speed = 0.025;

scale_y = 0;
scale_y_way = 1;
scale_y_max = 0.15;
scale_y_speed = 0.01;

angle = 0;
angle_way = 1;
angle_max = 30;
angle_speed = 0.5;

audio_play_sound(snd_elephant, global.sound_id++, false);
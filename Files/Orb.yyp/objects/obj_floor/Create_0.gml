/// @description 

if (x < room_width/2)
{
	image_index = 0;
	x = 30;
}
else
{
	image_index = 1;
	x = room_width-sprite_width-30;
}
	
y = 80+40;
image_speed = 0;
depth = 120;
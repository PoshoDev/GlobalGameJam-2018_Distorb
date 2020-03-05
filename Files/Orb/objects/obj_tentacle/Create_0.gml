/// @description 
if (x < room_width/2)
{
	image_xscale = -1;
	x = 30;
}
else
{
	image_xscale = 1;
	x = room_width-30;
}

image_xscale *= 3;
image_yscale = 2;

depth = -1000;
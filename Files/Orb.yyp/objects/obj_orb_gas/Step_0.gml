/// @description 
scale -= 0.05;

image_xscale = scale;
image_yscale = scale;
image_alpha = scale-0.5;

if (scale < 0.75)
	with self instance_destroy();
/// @description 
image_speed = 0;
image_index = irandom_range(0, 3);
image_angle = irandom_range(0, 359);

scale = 1.25;
image_xscale = scale;
image_yscale = scale;

if ((obj_orb.reach == false && global.orb_hold == 0) || (obj_orb.reach == true && global.orb_hold == 1))
	sprite_index = spr_orb_gas_blue;
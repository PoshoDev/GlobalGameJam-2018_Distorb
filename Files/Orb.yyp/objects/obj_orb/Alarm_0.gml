/// @description 
if (!global.gameover && global.gamestart)
{
	instance_create_depth(x, y, depth+1, obj_orb_gas)

	if (reach)
		alarm[0] = 4;
	else
		alarm[0] = 1;
}
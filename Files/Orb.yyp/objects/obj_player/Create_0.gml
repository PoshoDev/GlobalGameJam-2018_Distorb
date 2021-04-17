/// @description 

hitbox_x = sprite_width/2;
hitbox_y = sprite_height/2;

pos_y_min = 120 + hitbox_y;
pos_y_max = room_height-40;

moving = false;
move_x = false;
move_y = false;

stand = false;

speed_tween = 0;

tremble = 0;
tremble_way = 1;
tremble_max = 1;
tremble_speed = 4;

bump = 0;
bump_way = 1;
bump_max = 0.25;
bump_speed = 0.125;

scale = 1.5;
image_speed = 0;

if (x < room_width/2)
{
	char = 0;
	
	x = room_width/4;
	y = room_height/2+40;
	
	if (global.gamemode == gmode.single) {
		gamepad_id =  0;
		cont_move_h = gp_axislh;
		cont_move_v = gp_axislv;
		cont_parry =  gp_shoulderlb;
	}
	else {
		gamepad_id =  0;
		cont_move_h = gp_axislh;
		cont_move_v = gp_axislv;
		cont_parry =  gp_face1;
	}
	
	pos_x_min = 30 + hitbox_x //0;
	pos_x_max = (room_width/2)-30 - hitbox_x; //room_width/2;
	global.player0 = self;
	holding = 0;
}
else
{
	char = 1;
	
	x = (room_width/4)*3;
	y = room_height/2+40;
	
	if (global.gamemode == gmode.single) {
		gamepad_id =  0;
		cont_move_h = gp_axisrh;
		cont_move_v = gp_axisrv;
		cont_parry =  gp_shoulderrb;
	}
	else {
		gamepad_id =  1;
		cont_move_h = gp_axislh;
		cont_move_v = gp_axislv;
		cont_parry =  gp_face1;
	}
	
	pos_x_min = room_width/2 + 30 + hitbox_x;
	pos_x_max = room_width - 30 - hitbox_x;
	global.player1 = self;
	holding = 0;
}
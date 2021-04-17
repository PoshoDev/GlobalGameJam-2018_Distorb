/// @description 
//draw_rectangle_color(0, 0, room_width, room_height, make_color_hsv(a++, b++, c++), make_color_hsv(d++, e++, f++), make_color_hsv(g++, h++, i++), make_color_hsv(j++, k++, l++), false);

draw_text(0, 0, "gamemode: "+string(global.gamemode));

if (global.gamestart == 0)
{
	draw_sprite_ext(spr_button, gamepad_button_check(global.char0.gamepad_id, global.char0.cont_parry), room_width/4, (room_height/3)*2, 0.75, 0.75, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_button, gamepad_button_check(global.char1.gamepad_id, global.char0.cont_parry), (room_width/4)*3, (room_height/3)*2, 0.75, 0.75, image_angle, image_blend, image_alpha);
	
	if (gamepad_button_check(global.char0.gamepad_id, global.char0.cont_parry) && gamepad_button_check(global.char1.gamepad_id, global.char0.cont_parry))
	{
		global.gamestart++;
		
		global.orb_hold = irandom_range(0, 1);
		
		with (obj_orb)
		{
			if (global.orb_hold == 0)
				target = global.player0;
			else
				target = global.player1;
				
			alarm[0] = 1;
		}
		
		audio_play_sound(msc_intro, global.sound_id++, 0);
		
		alarm[0] = 60*2;
		alarm[1] = 60*5;
		alarm[2] = 60*10;
	}
}

if (!global.gameover && black_blend > 0)
	black_blend -= 0.025;
else if (global.gameover_step == 2)
{
	if (black_blend < 1)
		black_blend += 0.025;
	else
		room_restart();
}

draw_set_color(c_black);
draw_set_alpha(black_blend);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(c_white);
draw_set_alpha(1);

if (global.gamestart && global.show_title > 0)
	global.show_title -= 0.025;
else if (!global.gamestart && title_activate)
	global.show_title += 0.025;
	
if (global.show_title != 0)
{
	draw_sprite_ext(spr_logo, 0, room_width/2, 140, 4, 4, 0, image_blend, global.show_title);
	draw_sprite_ext(spr_credits, 0, 0, 0, 1, 1, 0, image_blend, global.show_title);
}
/// @description
randomize();

global.gamestart = 0;
global.gamepad_deadzone = 0.15;
global.orb_hold = 0;
global.speed_mult = 24  // 32;
global.scroll_speed = 12;
global.gameover = false;
global.gameover_step = 0;
global.sound_id = 0;
global.devmode = false;
global.devmode_mute = false;

window_set_fullscreen(true);

draw_enable_swf_aa(true);
draw_set_swf_aa_level(0.5);

spawn_step = 0;
black_blend = 1;
title_activate = false;

if (irandom_range(0, 1))
	audio_play_sound(snd_hum_1, global.sound_id++, 1);
else
	audio_play_sound(snd_hum_2, global.sound_id++, 1);
	
/*a = irandom_range(0, 255);
b = irandom_range(0, 255);
c = irandom_range(0, 255);
d = irandom_range(0, 255);
e = irandom_range(0, 255);
f = irandom_range(0, 255);
g = irandom_range(0, 255);
h = irandom_range(0, 255);
i = irandom_range(0, 255);
j = irandom_range(0, 255);
k = irandom_range(0, 255);
l = irandom_range(0, 255);*/
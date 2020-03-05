/// @description
draw_sprite_ext(spr_player_shadow, 0, x, y, scale, scale, image_angle, image_blend, image_alpha);

if (holding || stand)
	index_hands = 1;
else
	index_hands = 0;

if (gamepad_id == 0)
{
	if (moving)
		draw_sprite_ext(spr_fatty_body, image_index, x, y, scale, scale+bump, image_angle, image_blend, image_alpha);
	else
		draw_sprite_ext(spr_fatty_body, 0, x+tremble, y, scale, scale+bump, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_fatty_arms, index_hands, x+(tremble/2), y, scale, scale+bump, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_fatty_head, 0, x+(tremble/3), y, scale, scale+(bump/2), image_angle, image_blend, image_alpha);
	if (global.gameover && global.guilty == self)
		draw_sprite_ext(spr_fatty_eyes, 0, x, y, scale, scale, image_angle, image_blend, image_alpha);
}
else
{
	if (moving)
		draw_sprite_ext(spr_nosey_body, image_index, x, y, scale, scale+bump, image_angle, image_blend, image_alpha);
	else
		draw_sprite_ext(spr_nosey_body, 0, x+tremble, y, scale, scale+bump, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_nosey_arms, index_hands, x+(tremble/2), y, scale, scale+bump, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_nosey_head, 0, x+(tremble/3), y, scale, scale+(bump/2), image_angle, image_blend, image_alpha);
	if (global.gameover && global.guilty == self)
		draw_sprite_ext(spr_nosey_eyes, 0, x, y, scale, scale, image_angle, image_blend, image_alpha);
}
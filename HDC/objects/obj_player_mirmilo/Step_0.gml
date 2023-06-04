/// @description Etapas do Mirmilo

//teclas
right = keyboard_check(ord("D")) or keyboard_check(vk_right);
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);

//define movimentação X e Y
var _xx = right - left;
var _yy = down - up;

//modifica a direção para a direção calculada pela movimentação X e Y
if _xx != 0 or _yy != 0 {
	dir = point_direction(x, y, x + _xx, y + _yy);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);

	//movimento
	x += hspd;
	y += vspd;
if right = 1 {
	sprite_index = spr_player_mirmilo_andando_lateral_dir;
}
if left = 1 {
	sprite_index = spr_player_mirmilo_andando_lateral_esq;
}
if down = 1 {
	sprite_index = spr_player_mirmilo_andando_baixo;
}
if up = 1 {
	sprite_index = spr_player_mirmilo_andando_cima;
}
} else {
	sprite_index = spr_player_mirmilo_parado;
}
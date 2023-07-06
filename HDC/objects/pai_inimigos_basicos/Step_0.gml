/// @description etapas inimigo

if room = rm_arena_Capua {
	
	if (global.player_spd == 1.25) {global.initial_speed = 1.00};
	if (global.player_spd == 1.50) {global.initial_speed = 1.25};
	if (global.player_spd == 1.75) {global.initial_speed = 1.50};
	if (global.player_spd == 2.00) {global.initial_speed = 1.75};

	if global.level_up = true{
		image_speed = 0;
		exit;
	} else {
		image_speed = 2;
	}

	depth = -y;
	var _border = 64;

	if y < global.cmy - _border{
		y = global.cmy + global.cmh + _border;
	}

	if y > global.cmy + global.cmh + _border{
		y = global.cmy - _border;
	}

	if x < global.cmx - _border{
		x = global.cmx + global.cmw + _border;
	}

	if x > global.cmx + global.cmw + _border {
		x = global.cmx - _border;
	}

	dir = point_direction(x, y, obj_jogador.x, obj_jogador.y);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);

	x += hspd;
	y += vspd;
	
	if vida > global.vida_inimigo * 0.80 {
	sprite_index = spr_inimigo_1_andando;
	}
	
	if vida <= global.vida_inimigo * 0.80 {
	sprite_index = spr_inimigo_1_andando_hurt;
	}
	if vida <= global.vida_inimigo * 0.40 {
	sprite_index = spr_inimigo_1_andando_dying;
	}

	if vida <= 0 {
		audio_play_sound(snd_inimigo_atingido, 1, false);
		repeat(3) {
			var _xx = irandom_range(-10, 10);
			var _yy = irandom_range(-10, 10);
			instance_create_layer(x + _xx, y + _yy, "Instances", obj_exp);
		}
		repeat(8){
			instance_create_layer(x, y, "Instances", obj_sangue_inimigo);
		}
		repeat(8){
			instance_create_layer(x, y, "Instances", obj_sangue_inimigo);
		}
		instance_destroy();
	}
	
}
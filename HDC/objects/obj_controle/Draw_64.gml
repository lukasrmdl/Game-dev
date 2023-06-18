/// @description Desenhos de hud
if room = rm_arena_Capua {
	if global.level_up == true {	
	var _sprw = sprite_get_width(spr_level_up_hud);
	var _sprh = sprite_get_height(spr_level_up_hud);
	var _buffer = 6;
	var _xx = display_get_gui_width()/2;
	var _yy = display_get_gui_height()/2 - _sprh - _buffer;
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	draw_set_alpha(.7);
	draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);

	for (var i = 0; i < upgrade_num; i++){
		var _y = upgrade_list[| i];
		var _name = upgrades_grid[# Upgrades.Name, _y ];
		var _spry = _yy + (_sprh + _buffer) * i;
		draw_set_color(c_white);

		if point_in_rectangle(_mx, _my, _xx - _sprw/2, _spry - _sprh/2, _xx + _sprw/2, _spry + _sprh/2){
			if mouse_check_button_pressed(mb_left) {
					upgrade_selecionado = upgrades_grid[# Upgrades.Name, _y];
					ativarUpgradeNoJogador(upgrade_selecionado);
					global.level_up = false;
			}
			upgrade_alpha = 1;
			upgrade_scale = 1.1;
			upgrades_x = _xx + 15 - _sprw/2;
			draw_set_font(fnt_alkhemikal_medium);
		}else{
			draw_set_font(fnt_alkhemikal_small);
			upgrade_alpha = .7;
			upgrade_scale = 1;
			upgrades_x = _xx + 20 - _sprw/2;
		}
		
		draw_sprite_ext(spr_level_up_hud, -1, _xx, _spry, upgrade_scale, upgrade_scale, 0, c_white, upgrade_alpha);
		draw_sprite(spr_upgrades, _y, upgrades_x, _spry + 1);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(_xx, _spry, _name);
		audio_stop_sound(snd_ambience_1);
		audio_stop_sound(snd_crowd);
		audio_stop_sound(snd_jogador_andando);
	}
	exit;
} else {
	if !audio_is_playing(snd_crowd) {
			audio_play_sound(snd_crowd, 1, true);
		}
	if !audio_is_playing(snd_ambience_1) {
		audio_play_sound(snd_ambience_1, 1, true);
	}
	var _c = make_color_rgb(13, 33, 79);
	draw_set_font(fnt_alkhemikal_medium);
	draw_sprite(spr_nome_rael, -1, display_get_gui_width()/2 - 255, 3);
	draw_text_color(display_get_gui_width()/2 + 180, 18, "Nível: " + string(global.nivel), _c, _c, _c, _c, 1);
	draw_sprite(spr_exp_hud, -1, display_get_gui_width()/2, 2);
	
	
	draw_sprite_ext(spr_exp_bar, -1, display_get_gui_width()/2, 3, global.exp/global.exp_max, 1, 0, c_white, 1);
	
	draw_sprite_ext(spr_arma_hud_gladio, 0, 5, 222, 1, 1, 0, make_color_rgb(255, 255, 255), 1);

	_pillum_hud = spr_arma_hud_pillum;
	_pena_hud = spr_sapatos_hud;
	
	if (global.wasPillum == 1) {
		draw_sprite_ext(_pillum_hud, 0, 27, 221, 1.2, 1.2, 0, make_color_rgb(255, 255, 255), 1);
	} else if (global.wasPillum == 2) {
		draw_sprite_ext(_pillum_hud, 1, 27, 221, 1.2, 1.2, 0, make_color_rgb(255, 255, 255), 1);
	} else if (global.wasPillum == 3) {
		draw_sprite_ext(_pillum_hud, 2, 27, 221, 1.2, 1.2, 0, make_color_rgb(255, 255, 255), 1);
	}
	if (global.player_spd == 1.25) {
		draw_sprite_ext(_pena_hud, 0, 54, 221, 1.2, 1.2, 0, make_color_rgb(255, 255, 255), 1);
	} else if (global.player_spd = 1.50) {
		draw_sprite_ext(_pena_hud, 1, 54, 221, 1.2, 1.2, 0, make_color_rgb(255, 255, 255), 1);
	} else if (global.player_spd == 1.75) {
		draw_sprite_ext(_pena_hud, 2, 54, 221, 1.2, 1.2, 0, make_color_rgb(255, 255, 255), 1);
	} else if (global.player_spd == 2.00) {
		draw_sprite_ext(_pena_hud, 3, 54, 221, 1.2, 1.2, 0, make_color_rgb(255, 255, 255), 1);
	}
}
} else if room = rm_game_over {
	var _largura = display_get_gui_width();
	var _altura = display_get_gui_height();
	var _c = make_color_rgb(13, 33, 79);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_ext_color(_largura/2, _altura/2, "Fim de jogo! O seu gladiador morreu, Se quiser tentar novamente, aperte 'R'", 70, 500, _c, _c, _c, _c, 1);
	if keyboard_check_pressed(ord("R")) {
	game_restart();
	}
}


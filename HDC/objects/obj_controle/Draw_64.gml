/// @description Desenhos de hud

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
		var _spry = _yy + (_sprh + _buffer) * i;

		if point_in_rectangle(_mx, _my, _xx - _sprw/2, _spry - _sprh/2, _xx + _sprw/2, _spry + _sprh/2){
			upgrade_alpha = 1;
			upgrade_scale = 1.1;
		}else{
			upgrade_alpha = .7;
			upgrade_scale = 1;
		}
		
		draw_sprite_ext(spr_level_up_hud, -1, _xx, _spry, upgrade_scale, upgrade_scale, 0, c_white, upgrade_alpha);
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
	
	draw_sprite(spr_exp_hud, -1, display_get_gui_width()/2, 2);
	draw_sprite_ext(spr_exp_bar, -1, display_get_gui_width()/2, 3, global.exp/global.exp_max, 1, 0, c_white, 1);
	draw_sprite_ext(spr_arma_hud_gladio, 0, 5, 222, 1, 1, 0, make_color_rgb(255, 255, 255), 1);
}

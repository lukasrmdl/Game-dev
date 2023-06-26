/// @description Inserir descrição aqui
if room = rm_arena_Capua {
	if (global.level_up == true) {
		exit;
	} else {
		draw_set_valign(fa_middle);
		draw_set_valign(fa_center);
		var _c = make_color_rgb(13, 33, 79);
		draw_set_font(fnt_alkhemikal_small_hud_name);
		draw_set_color(_c);
	
		for (var i = 0; i < array_length(inv); i++) {
			var _xx = camera_get_view_x(view_camera[0]) + screen_border;
			var _yy = camera_get_view_y(view_camera[0]) + screen_border + 54;
			var _sep = sep;
		
			draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep*i);
			draw_text( _xx + 14, _yy + _sep*i, inv[i].nome);
		}
	}
}
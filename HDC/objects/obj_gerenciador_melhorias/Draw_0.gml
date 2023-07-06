/// @description Inserir descrição aqui
if room = rm_arena_Capua {
	if (global.level_up == true) {
		exit;
	} else {
		draw_set_halign(fa_middle);
		draw_set_valign(fa_center);
		draw_set_font(fnt_alkhemikal_small_hud_name);
		
		
		for (var i = 0; i < array_length(inv); i++) {
			var _xx = camera_get_view_x(view_camera[0]) + screen_border;
			var _yy = camera_get_view_y(view_camera[0]) + screen_border + sep + 38;
			var _sep = sep;
			var _prev = make_color_rgb(13, 33, 79);
			
			draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep*i);		
			
			if selected_upgrade == i {
				depth = -9999;
				draw_text( _xx + 27, _yy + _sep*i, inv[i].nome);
				draw_set_font(fnt_alkhemikal_small_hud_name);
				draw_set_halign(fa_middle);
				draw_set_valign(fa_center);
				draw_text_ext(_xx + 66, camera_get_view_y(view_camera[0]) + 231, inv[i].descricao, 12, 150);
			}
			
			draw_set_color(_prev);
		}
	}
}
/// @description Inserir descrição aqui	

// Armazena a posição inicial do texto
if global.level_up == false {
	depth = -9999;
	var _c = make_color_rgb(13, 33, 79);
	draw_set_font(fnt_alkhemikal_small);
	draw_text_color(camera_get_view_x(view_camera[0]) + 8, camera_get_view_y(view_camera[0]) + 22, string(global.classe_jogador), _c, _c, _c, _c, 1);
	draw_set_font(fnt_alkhemikal_medium);
	draw_text_color(camera_get_view_x(view_camera[0]) + 388, camera_get_view_y(view_camera[0]), "Nível: " + string(global.nivel), _c, _c, _c, _c, 1);
	draw_text_color(camera_get_view_x(view_camera[0]) + 8, camera_get_view_y(view_camera[0]), string(global.nome_jogador), _c, _c, _c, _c, 1);
	draw_text_color(camera_get_view_x(view_camera[0]) + 456, camera_get_view_y(view_camera[0]), "Onda: ", _c, _c, _c, _c, 1);
}

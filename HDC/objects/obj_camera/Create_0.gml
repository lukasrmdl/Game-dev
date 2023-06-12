/// @description Variavéis Camera

// Pega tamanho da tela
global.cmw = camera_get_view_width(view_camera[0]);
global.cmh = camera_get_view_height(view_camera[0]);

global.cmx = obj_jogador.x - global.cmw/2;
global.cmy = obj_jogador.y - global.cmh/2;

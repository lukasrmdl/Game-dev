/// @description eventos
x = global.cmx;
y = global.cmy;

//movimentação da camera
global.cmx = lerp(global.cmx, obj_jogador.x - global.cmw/2, .2);
global.cmy = lerp(global.cmy, obj_jogador.y - global.cmh/2, .2);

camera_set_view_pos(view_camera[0], global.cmx, global.cmy);

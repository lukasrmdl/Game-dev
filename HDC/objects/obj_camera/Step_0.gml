/// @description eventos
x = global.cmx; 
y = global.cmy;

//movimentação da camera
global.cmx = lerp(global.cmx, obj_player_mirmilo.x - global.cmw/2, .2);
global.cmy = lerp(global.cmy, obj_player_mirmilo.y - global.cmh/2, .2);

camera_set_view_pos(view_camera[0], global.cmx, global.cmy);

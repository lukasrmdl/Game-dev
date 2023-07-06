/// @description Etapas gladio

if global.level_up = true {
	alarm[0]++;
	speed = 0;
	exit;
} else {
	speed = 2.2;
}

// Obtém as coordenadas da câmera
var camX = camera_get_view_x(view_camera[0]);
var camY = camera_get_view_y(view_camera[0]);
var camWidth = camera_get_view_width(view_camera[0]);
var camHeight = camera_get_view_height(view_camera[0]);

// Verifica se o objeto saiu da câmera
if (x < camX || x > camX + camWidth || y < camY || y > camY + camHeight) {
    instance_destroy();
}

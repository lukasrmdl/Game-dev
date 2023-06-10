/// @description etapas gladio

if global.level_up = true{
	alarm[0]++;
	speed = 0;
	exit;
} else {
	speed = 2;
}

if alarm[0] <= 0 {
	var _enemy = instance_nearest(x, y, pai_inimigo);
	var _inst = instance_create_layer(x, y, "Instances", obj_arma_gladio_vfx);
	_inst.speed = 0.6;
	_inst.direction = point_direction(x, y, _enemy.x, _enemy.y);
	_inst.image_angle = _inst.direction;
	_inst.depth = depth + 1; 
	_inst.alpha = 1; // Definir o valor inicial de alpha
	_inst.alpha_step = 0.7; // Valor do decremento de alpha a cada etapa
	alarm[0] = 3;
}
	
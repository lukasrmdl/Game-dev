/// @description etapas exp

if global.level_up = true{
	exit;
}

if distance_to_object(obj_jogador) <= global.collect_range {
	var _dir = point_direction(x, y, obj_jogador.x, obj_jogador.y);
	hspd = lengthdir_x(spd, _dir);
	vspd = lengthdir_y(spd, _dir);	
	
	x +=  hspd;
	y += vspd;
}

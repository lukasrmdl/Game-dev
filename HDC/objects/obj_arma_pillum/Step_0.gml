/// @description Etapas gladio

if global.level_up = true {
	alarm[0]++;
	speed = 0;
	exit;
} else {
	speed = 2;
}
	var _sword_speed = 2;
var _player = instance_nearest(x, y, obj_jogador);
var _sword_comeback = false; // Variável que indica se a espada deve retornar ao jogador

if alarm[0] <= 0 {
	if _sword_comeback {
		var _sword_direction = point_direction(x, y, _player.x, _player.y);
		var _sword_hspd = lengthdir_x(_sword_speed, _sword_direction);
		var _sword_vspd = lengthdir_y(_sword_speed, _sword_direction);
		x -= _sword_hspd; 
		y -= _sword_vspd;
		
		if point_distance(x, y, _player.x, _player.y) <= _sword_distance {
			_sword_comeback = false; 
		}
	} else {
		if !_sword_traveling {
			_sword_traveling = true;
			_sword_distance = 0;
		}
		alarm[0] = 3;
	}
}

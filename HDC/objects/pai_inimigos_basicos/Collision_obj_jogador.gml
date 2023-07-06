/// @description Inserir descrição aqui

if global.level_up = true{
	exit;
}

var _push  = 2;

var _dir = point_direction(other.x, other.y, x, y);
var _hspd = lengthdir_x(_push, _dir);
var _vspd = lengthdir_y(_push, _dir);

x += _hspd;
y += _vspd;
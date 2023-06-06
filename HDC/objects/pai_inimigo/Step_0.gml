/// @description etapas inimigo
depth = -y;
var _border = 64;

if y < global.cmy - _border{
	y = global.cmy + global.cmh + _border;
}

if y > global.cmy + global.cmh + _border{
	y = global.cmy - _border;
}

if x < global.cmx - _border{
	x = global.cmx + global.cmw + _border;
}

if x > global.cmx + global.cmw + _border {
	x = global.cmx - _border;
}

dir = point_direction(x, y, obj_jogador.x, obj_jogador.y);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

x += hspd;
y += vspd;

if hp <= 0 {
	repeat(3) {
		var _xx = irandom_range(-10, 10);
		var _yy = irandom_range(-10, 10);
		instance_create_layer(x + _xx, y + _yy, "Instances", obj_exp);
	}
	instance_destroy();
}
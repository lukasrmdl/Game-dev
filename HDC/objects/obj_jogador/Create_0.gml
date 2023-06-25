/// @description Variavéis de criação
right = -1;
up = -1;
left = -1;
down = -1;
hspd = -1;
vspd = -1;
global.max_speed = false;
global.player_spd = 1;
image_xscale = .9;
image_yscale = .9;

if global.player_spd >= 2 {
	global.player_spd = 2;
	global.max_speed = true;
}
dir = -1;
alfa_add = 0;

vida = 100;
armadura = 0;
collect_range = 32;

depth = +1;

arma_gladio_timer = 60;
arma_gladio_cd = arma_gladio_timer;

arma_pillum_timer = 90;
arma_pillum_cd = arma_pillum_timer;
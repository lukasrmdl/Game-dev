/// @description Variavéis de criação
right = -1;
up = -1;
left = -1;
down = -1;
hspd = -1;
vspd = -1;
global.max_speed = false;
global.initial_speed = 1;
global.player_spd = 1;
image_xscale = .9;
image_yscale = .9;

if global.player_spd >= 2 {
	global.player_spd = 2;
	global.max_speed = true;
}
dir = -1;
alfa_add = 0;

global.vida_jogador = 100;
global.vida_jogador_max = 100;
global.armadura_jogador = 0;
global.collect_range = 30;

if global.collect_range >= 90 {
	global.collect_range = 90;
}

depth = +1;

arma_gladio_timer = 60;
arma_gladio_cd = arma_gladio_timer;

arma_pillum_timer = 120;
arma_pillum_cd = arma_pillum_timer;

arma_plumbata_timer = 400;
arma_plumbata_cd = arma_plumbata_timer;
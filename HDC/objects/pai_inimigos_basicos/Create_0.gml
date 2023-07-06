/// @description Variaveis pai inimigo

hspd = -1;
vspd = -1;
dir = -1;

spd = global.initial_speed * 0.75;
vida = global.vida_jogador_max * 0.25 + global.onda * 3;

global.vida_inimigo = vida;
armadura = 5;
jaAtingido = false;
alfa_add = 0;

image_xscale = 1.1;
image_yscale = 1.1;
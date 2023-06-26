/// @description Variaveis pai inimigo

hspd = -1;
vspd = -1;
dir = -1;
bleeding = false;

spd = global.player_spd * .35 * global.onda;
spd_max = global.player_spd * 0.75

if spd > spd_max {
    spd = spd_max
}


vida = 25 + global.nivel + global.onda;
armadura = 5;
jaAtingido = false;
alfa_add = 0;
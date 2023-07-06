/// @description colisão com inimigo
randomize();

if (random_range(1, 100) <= 5) {
	crit = true;
    dano = dano*2;
	audio_play_sound(snd_crit, 1, false);
} else {
	crit = false;
    dano = dano;
}

_dano_no_inimigo = dano-other.armadura;

other.vida -= _dano_no_inimigo;
audio_play_sound(snd_plumblata_hit, 1, false);

repeat(2){
	instance_create_layer(other.x, other.y, "Instances", obj_sangue_jogador);
}

var damage = _dano_no_inimigo; // Defina o valor do dano aqui (substitua pelo valor real do dano causado)

var obj = instance_create_layer(other.x - 15, other.y - 18, "Instances", obj_dano_numero); // Cria o objeto "obj_DamageNumber"
obj.damage_num = damage; // Define o valor do dano no objeto criado
obj.crit = crit;


var _push = 5; 
var _dir = point_direction(x, y, other.x, other.y);
var _hspd = lengthdir_x(_push, _dir);
var _vspd = lengthdir_y(_push, _dir);

other.x += _hspd;
other.y += _vspd;

instance_destroy();
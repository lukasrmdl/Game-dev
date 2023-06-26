/// @description colisão com inimigo
randomize();
if (random_range(1, 100) <= 15) {
	crit = true;
    dano = dano*2;
	audio_play_sound(snd_crit, 1, false);
} else {
	crit = false;
    dano = dano;
}

//sangramento

if (random_range(1, 100) <= 10) {
	other.bleeding = true;
}

_dano_no_inimigo = dano-other.armadura;

other.vida -= _dano_no_inimigo;
repeat(4){
	instance_create_layer(other.x, other.y, "Instances", obj_sangue_jogador);
}

var damage = _dano_no_inimigo; // Defina o valor do dano aqui (substitua pelo valor real do dano causado)

var obj = instance_create_layer(other.x - 15, other.y - 18, "Instances", obj_dano_numero); // Cria o objeto "obj_DamageNumber"
obj.damage_num = damage; // Define o valor do dano no objeto criado
obj.crit = crit;
_sword_comeback = true;
instance_destroy();

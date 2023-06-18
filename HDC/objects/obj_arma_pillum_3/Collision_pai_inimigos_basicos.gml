/// @description colisão com inimigo
randomize();
if (!_sword_comeback || other.jaAtingido == false) {
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
	var damage = _dano_no_inimigo; // Defina o valor do dano aqui (substitua pelo valor real do dano causado)

	var obj = instance_create_layer(other.x - 15, other.y - 18, "Instances", obj_dano_numero); // Cria o objeto "obj_DamageNumber"
	obj.damage_num = damage; // Define o valor do dano no objeto criado
	obj.crit = crit;
	
    _sword_comeback = true;
    durabilidade -= 1;
	repeat(5){
		instance_create_layer(other.x, other.y, "Instances", obj_sangue_jogador);
	}
    audio_play_sound(snd_spear_hit, 1, false);

    // Marque o inimigo atual como atingido neste lançamento
    other.jaAtingido = true;

    if durabilidade <= 0 {
        instance_destroy();
    }
}

// Se o jogador lançar novamente, redefine a variável jaAtingido para false
if (!_sword_comeback) {
	var inst = collision_circle(x, y, 20, pai_inimigos_basicos, true, true);
     if inst != noone {
        inst.jaAtingido = false;
    }
}
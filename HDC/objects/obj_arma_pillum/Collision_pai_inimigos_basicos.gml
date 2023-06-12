/// @description colisão com inimigo

if (!_sword_comeback || other.jaAtingido == false) {
    other.vida -= (dano - other.armadura);
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
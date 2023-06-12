/// @description Colisão inimigos basicos
if alarm[0] <= 0{
	vida -= (25 - armadura);
	repeat(5){
		instance_create_layer(x, y, "Instances", obj_sangue_jogador);
	}

	with (other) {
		vida -= 5 - armadura;
		audio_play_sound(snd_colisao_inimigos, 1, false);
		audio_play_sound(snd_jogador_atingido, 1, false);
	}
	alarm[0] = 180;
}

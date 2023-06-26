/// @description Colisão inimigos basicos
if alarm[0] <= 0{
	global.vida_jogador -= (25 - armadura);
	repeat(5){
		instance_create_layer(x, y, "Instances", obj_sangue_jogador);
	}

	with (other) {
		global.vida_jogador -= 5 - armadura;
		audio_play_sound(snd_colisao_inimigos, 1, false);
		audio_play_sound(snd_jogador_atingido, 1, false);
	}
	
	var damage = 25 - armadura;

	var obj = instance_create_layer(x - 15, y - 18, "Instances", obj_dano_numero_jogador); // Cria o objeto "obj_DamageNumber"
	obj.damage_num = damage; // Define o valor do dano no objeto criado
	alarm[0] = 180;
}

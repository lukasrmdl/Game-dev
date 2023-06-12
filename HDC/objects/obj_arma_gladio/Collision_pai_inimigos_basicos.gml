/// @description colisão com inimigo
other.vida -= (dano-other.armadura);
repeat(4){
	instance_create_layer(other.x, other.y, "Instances", obj_sangue_jogador);
}
_sword_comeback = true;
instance_destroy();

/// @description colisão com inimigo
other.vida -= (dano-other.armadura);
_sword_comeback = true;
instance_destroy();
audio_play_sound(snd_spear_hit, 1, false);
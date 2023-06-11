/// @description jogador coleta exp

global.exp += xp;
audio_play_sound(snd_coleta_xp, 1, false);
instance_destroy();
/// @description Etapas do jogador

var _enemy_target = noone;
var _sword_traveling = false;
var _sword_speed = 5;
var _sword_offset_x = 32; // Ajustar a posição da espada em relação ao jogador
var _sword_offset_y = 0;  // Ajustar a posição da espada em relação ao jogador
var _sword_rotation_speed = 5; // Velocidade de rotação da espada
var _sword_angle = 0; // Ângulo atual da espada
var _sword_attacking = false; // Indica se a espada está realizando um ataque

if global.level_up = true{
	image_speed = 0;
	exit;
} else {
	image_speed = 1;
}

//teclas
right = keyboard_check(ord("D")) or keyboard_check(vk_right);
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);

//define movimentação X e Y
var _xx = right - left;
var _yy = down - up;

//modifica a direção para a direção calculada pela movimentação X e Y
if _xx != 0 or _yy != 0 {
	dir = point_direction(x, y, x + _xx, y + _yy);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);

	//movimento
	x += hspd;
	y += vspd;
if right = 1 {
	if !audio_is_playing(snd_jogador_andando) {
		audio_play_sound(snd_jogador_andando, 1, true);
	}
	sprite_index = spr_jogador_mirmilo_andando_lateral_dir;
}
if left = 1 {
	if !audio_is_playing(snd_jogador_andando) {
		audio_play_sound(snd_jogador_andando, 1, true);
	}
	sprite_index = spr_jogador_mirmilo_andando_lateral_esq;
}
if down = 1 {
	if !audio_is_playing(snd_jogador_andando) {
		audio_play_sound(snd_jogador_andando, 1, true);
	}
	sprite_index = spr_jogador_mirmilo_andando_baixo;
}
if up = 1 {
	if !audio_is_playing(snd_jogador_andando) {
		audio_play_sound(snd_jogador_andando, 1, true);
	}
	sprite_index = spr_jogador_mirmilo_andando_cima;
}
} else {
	sprite_index = spr_jogador_mirmilo_parado;
	audio_stop_sound(snd_jogador_andando);
}

// Posiciona a espada ao lado do jogador
var _sword_x = x + _sword_offset_x;
var _sword_y = y + _sword_offset_y;

// Atualiza o ângulo da espada (para ela flutuar)
if !_sword_attacking {
    _sword_angle += _sword_rotation_speed;
}

if _sword_attacking {
    // Ajusta a posição da espada durante o ataque
    var _sword_attack_distance = 64; // Distância que a espada irá se mover durante o ataque
    var _sword_attack_speed = 5; // Velocidade do movimento da espada durante o ataque
    
    _sword_x += lengthdir_x(_sword_attack_distance, _sword_angle) * _sword_attack_speed;
    _sword_y += lengthdir_y(_sword_attack_distance, _sword_angle) * _sword_attack_speed;
}

//ataque armas

arma_gladio_cd--;

if arma_gladio_cd <= 0 {
	var _alcance_min = 5;
	var _alcance_max = 60;
	var _enemy = instance_nearest(x, y, pai_inimigo);
	var _distance = point_distance(x, y, _enemy.x, _enemy.y);
	if _distance >= _alcance_min and _distance <= _alcance_max {
		var _inst = instance_create_layer(x, y, "Instances", obj_arma_gladio);
		_inst.speed = 2;
		_inst.direction = point_direction(x, y, _enemy.x, _enemy.y);
		_inst.image_angle = _inst.direction;

		_sword_attacking = true;
		_enemy_target = _enemy;

		audio_play_sound(snd_arma_gladio_ataque, 1, false);
	
		arma_gladio_cd = arma_gladio_timer;
	}
}

if _sword_traveling {
    var _sword_distance = point_distance(x, y, _enemy_target.x, _enemy_target.y);
    if _sword_distance > 10 {
        var _sword_direction = point_direction(x, y, _enemy_target.x, _enemy_target.y);
        var _sword_hspd = lengthdir_x(_sword_speed, _sword_direction);
        var _sword_vspd = lengthdir_y(_sword_speed, _sword_direction);
        _enemy_target.x += _sword_hspd;
        _enemy_target.y += _sword_vspd;
    } else {
        _sword_traveling = false;
        _enemy_target = noone;
    }
}

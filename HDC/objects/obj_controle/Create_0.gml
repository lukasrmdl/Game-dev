/// @description Criação dos inimigos
randomize();

global.level = 1;
global.exp = 0;
global.exp_max = 100;
global.level_up = false;

spawn_timer = 2 * room_speed;

display_set_gui_size(514, 257);

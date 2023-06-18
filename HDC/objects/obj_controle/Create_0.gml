/// @description Criação dos inimigos
randomize();

global.wasIma = 0;
global.wasPillum = 0;
global.level = 1;
global.exp = 0;
global.exp_max = 100;
global.level_up = false;
//global.nome_gladiador = "Rael de Cuxe";
global.nivel = 1;
tempoDeJogo = 0;
tempoDeJogo += delta_time;

spawn_timer = 1.5 * room_speed;

upgrade_num = 3;
upgrade_alpha = 1;
upgrade_scale = 1;
upgrades_x = 1;
upgrade_selecionado = -1;

display_set_gui_size(514, 257);

enum Upgrades{
	Name,
	Script,
	Frequency,
	Length
}

// GRID UPGRADES

upgrades_grid = ds_grid_create(3, 0);
ds_grid_add_upgrade("Pillum", -1, -1); // pillum +1
if global.max_speed != 2 { ds_grid_add_upgrade("Pena", -1, -1);} // velocidade +1
ds_grid_add_upgrade("Imã", -1, -1);  // distancia de coleta +1
//ds_grid_add_upgrade("Estrela", -1, -1); // +1 ?
//ds_grid_add_upgrade("Shuriken", -1, -1); // +1 arma arremessavel
//ds_grid_add_upgrade("Sapo", -1, -1); // +1 Pet
//ds_grid_add_upgrade("Bumerangue", -1, -1); // +1 Arma arremessavel
//ds_grid_add_upgrade("Vida", -1, -1); // +1 vitalidade
//ds_grid_add_upgrade("Escudo", -1, -1); // +1 Armadura
//ds_grid_add_upgrade("Gladio", -1, -1); // +1 gladio

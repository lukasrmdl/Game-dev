/// @description Criação dos inimigos
randomize();

//tamanho da tela
global.cmw = camera_get_view_width(view_camera[0]);
global.cmh = camera_get_view_height(view_camera[0]);

global.cmx = obj_jogador.x - global.cmw/2;
global.cmy = obj_jogador.y - global.cmh/2;

global.wasLorica = 0;
global.wasPlumbata = 0;
global.wasImaHud = 0;
global.wasIma = 0;
global.wasVelocidade = 0;
global.wasPillum = 0;
global.onda = 1;
global.max_onda = 10;
global.exp = 0;
global.exp_max = 100;
global.level_up = false;
global.nome_jogador = "Rael de Cuxe";
global.classe_jogador = "Mirmilão";
global.nivel = 1;
global.wasGladio = 0;

if (global.classe_jogador == "Mirmilão") {
	_arma_inicial = "Gladio";
	ativarUpgradeNoJogador(_arma_inicial);
}

depth = -1;

global.tempoDeJogo = 30;

global.mostrarTempo = global.tempoDeJogo;

spawn_timer = 1.0 * room_speed + global.nivel;

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
ds_grid_add_upgrade("Pilo", -1, -1);// pillum +1};
ds_grid_add_upgrade("Botas", -1, -1); // velocidade +1
ds_grid_add_upgrade("Coleta", -1, -1);  // distancia de coleta +1
ds_grid_add_upgrade("Gladio", -1, -1); // pillum +1
ds_grid_add_upgrade("Plumbata", -1, -1); // Plumbata +1 
ds_grid_add_upgrade("Lorica", -1, -1); // +1 armadura
//ds_grid_add_upgrade("Sapo", -1, -1); // +1 Pet
//ds_grid_add_upgrade("Bumerangue", -1, -1); // +1 Arma arremessavel
//ds_grid_add_upgrade("Vida", -1, -1); // +1 vitalidade
//ds_grid_add_upgrade("Escudo", -1, -1); // +1 Armadura
//ds_grid_add_upgrade("Gladio", -1, -1); // +1 gladio

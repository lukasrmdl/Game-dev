/// @description variaveis manager

depth = -9999;

// construtor das melhorias

function criar_melhoria(_nom, _desc, _spr) constructor {
	nome = _nom;
	descricao = _desc;
	sprite = _spr;
}

//Cria os itens

global.item_list = {

	Gladio : new criar_melhoria(
		"Gládio",
		"Causa pouco dano físico porém com uma boa velocidade de ataque, possui média de chance de crítico.",
		spr_hud_melhoria_gladio
	),
	
	Pilo : new criar_melhoria(
		"Pilo",
		"Pouco dano físico perfurante, média velocidade de ataque e possui 5% de chance de crítico.",
		spr_hud_melhoria_pilo
	),
	Coleta : new criar_melhoria(
		"Coleta",
		"Não deixe nada para trás, Aumenta o alcance de coleta em 15 metros.",
		spr_hud_melhoria_coleta
	),
	Botas : new criar_melhoria(
		"Botas",
		"Eles não conseguem te pegar, Aumenta a velocidade de movimento em 25%.",
		spr_hud_melhoria_velocidade
	),
	Plumbata : new criar_melhoria(
		"Plumbata",
		"dano fisico em area e chance de critíco média porém com velocidade de ataque baixa.",
		spr_hud_melhoria_plumbata
	),
	Lorica : new criar_melhoria(
		"Lorica",
		"Aumenta a sua armadura em 5% diminuindo o dano de ataques fisicos.",
		spr_hud_melhoria_lorica
	),
	
}

//criar o inventario

inv = array_create(0);

selected_upgrade = -1;
	
	
// para desenhar, posição do mouse.

sep = 16;
screen_border = 16;

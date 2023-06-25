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
		"Confiável e letal, Causa 10 de dano físico, tem uma boa velocidade de ataque e possui 10% de chance de crítico.",
		spr_hud_melhoria_gladio
	),
	
	Pilo : new criar_melhoria(
		"Pilo",
		"A ponta da lança, Causa 5 de dano físico, tem uma média velocidade de ataque e possui 5% de chance de crítico, possui 3 de durabilidade e pode atravessar inimigos enquanto durar.",
		spr_hud_melhoria_pilo
	),
	Coleta : new criar_melhoria(
		"Coleta",
		"Não deixe nada para trás, Aumenta o alcance de coleta em 15 metros.",
		spr_hud_melhoria_coleta
	),
	Velocidade : new criar_melhoria(
		"Velocidade",
		"Eles não conseguem te pegar, Aumenta a velocidade de movimento em 25%.",
		spr_hud_melhoria_velocidade
	),
	
}

//criar o inventario

inv = array_create(0);
	
	
// para desenhar, posição do mouse.

sep = 16;
screen_border = 16;

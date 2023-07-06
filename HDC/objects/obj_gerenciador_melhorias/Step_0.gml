/// @description etapas gerenciador

//get selected upgrade

selected_upgrade = -1;

for (var i = 0; i < array_length(inv); i++) {
	var _xx = camera_get_view_x(view_camera[0]) + screen_border;
	var _yy = camera_get_view_y(view_camera[0]) + screen_border + sep*i + 38;
	
	
	if mouse_x > _xx - 8 && mouse_x < _xx + 8 && mouse_y > _yy + 8 && mouse_y < _yy + 25 {
		selected_upgrade = i;
	}
		
}

if global.wasVelocidade = 2 {global.item_list.Botas.descricao = "Eles não conseguem te pegar, Aumenta a velocidade de movimento em 50%."; };
if global.wasVelocidade = 3 {global.item_list.Botas.descricao = "Eles não conseguem te pegar, Aumenta a velocidade de movimento em 75%."; };
if global.wasVelocidade >= 4 {global.item_list.Botas.descricao = "Eles não conseguem te pegar, Aumenta a velocidade de movimento em 100%."; };

if global.collect_range == 45 {global.item_list.Coleta.descricao = "Não deixe nada para trás, Aumenta o alcance de coleta em 45 metros."; };
if global.collect_range == 60 {global.item_list.Coleta.descricao = "Não deixe nada para trás, Aumenta o alcance de coleta em 60 metros."; };
if global.collect_range == 75 {global.item_list.Coleta.descricao = "Não deixe nada para trás, Aumenta o alcance de coleta em 75 metros."; };
if global.collect_range >= 90 {global.item_list.Coleta.descricao = "Não deixe nada para trás, Aumenta o alcance de coleta em 90 metros."; };

if global.wasLorica == 0.10 {global.item_list.Lorica.descricao = "Aumenta a sua armadura em 10% diminuindo o dano de ataques fisicos."; };
if global.wasLorica == 0.15 {global.item_list.Lorica.descricao = "Aumenta a sua armadura em 15% diminuindo o dano de ataques fisicos."; };
if global.wasLorica >= 0.20 {global.item_list.Lorica.descricao = "Aumenta a sua armadura em 20% diminuindo o dano de ataques fisicos."; };

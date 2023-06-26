// Os recursos de script mudaram para a v2.3.0; veja

function ativarUpgradeNoJogador(upgrade_selecionado) {
    switch (upgrade_selecionado) {
		case "Gladio" :
			if global.wasGladio <= 0 {array_push(obj_gerenciador_melhorias.inv, global.item_list.Gladio);};
			global.wasGladio += 1;
            break;
        case "Pilo" :
			if global.wasPillum <= 0 {array_push(obj_gerenciador_melhorias.inv, global.item_list.Pilo);};
			global.wasPillum += 1;
            break;
        case "Coleta" :
			if global.wasImaHud <= 0 {array_push(obj_gerenciador_melhorias.inv, global.item_list.Coleta);};
           	global.wasIma += 1;
			global.wasImaHud = 1;
			break;
		case "Velocidade" :
			if global.wasVelocidade <= 0 {array_push(obj_gerenciador_melhorias.inv, global.item_list.Velocidade);};
			global.player_spd += 0.25;
			global.wasVelocidade += 1;
            break;
        
        default:
            show_message("Parabens! Passou de nível!");
            break;
    }
}

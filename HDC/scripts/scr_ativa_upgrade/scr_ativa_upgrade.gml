// Os recursos de script mudaram para a v2.3.0; veja

function ativarUpgradeNoJogador(upgrade_selecionado) {
    switch (upgrade_selecionado) {
        case "Pillum" :
			global.wasPillum += 1;
            break;
        case "Imã" :
			global.wasIma = 1;
            break;
		case "Pena" :
			global.player_spd += 0.25;
            break;
        
        default:
            show_message("Parabens! Passou de nível!");
            break;
    }
}

/// @description Inserir descrição aqui

// Mover o texto para cima
y -= .5;

alpha_damage_num -= 0.027; // Diminua gradualmente o valor do canal alfa (alpha)
alpha_damage_num_crit -= 0.017; // Diminua gradualmente o valor do canal alfa (alpha)

if (alpha_damage_num <= 0) {
    instance_destroy(); // Destroi o objeto quando o timer chegar a zero
	crit = false;
}
if (alpha_damage_num_crit <= 0) {
    instance_destroy(); // Destroi o objeto quando o timer chegar a zero
	crit = false;
}

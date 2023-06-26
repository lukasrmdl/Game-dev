/// @description Inserir descrição aqui

	var _cdamage = make_color_rgb(127, 14, 19);
	var previous_font = draw_get_font();
	var previous_alpha = draw_get_alpha();
	draw_set_font(fnt_alkhemikal_small_extra); // Defina a fonte desejada
	draw_set_color(_cdamage); // Defina a cor do número de dano
	draw_set_alpha(alpha_damage_num_crit);
	draw_text(x, y, string(damage_num)); // Desenha o número de dano na posição do objeto
	draw_set_font(previous_font);
	draw_set_alpha(previous_alpha);
